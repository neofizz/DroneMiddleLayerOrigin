#include <ros/ros.h>
#include <string>
#include <actionlib/server/simple_action_server.h>
#include "AdapterSetFlightModeAction.h"
#include <mavros_msgs/CommandBool.h>
#include <adapter_space/BStatusGoal.h>

namespace AdapterSpace
{

	AdapterSetFlightModeAction::AdapterSetFlightModeAction(string droneName, string actionName, string localization_mode,
		AdapterBrokerSpace::AdapterPositionBroker* positionBroker, AdapterBrokerSpace::AdapterStatusBroker* statusBroker)
			: AdapterActionBase(droneName, actionName)
	{
		loc_mode = localization_mode;
		service_name = drone_name + "/mavros/set_mode";
		TOPIC_NAME_SETPOINT_LOCAL = drone_name + "/mavros/setpoint_position/local";
		TOPIC_NAME_SETPOINT_GLOBAL = drone_name + "/mavros/setpoint_position/global";

		action_server = new actionlib::SimpleActionServer<adapter_space::SetFlightModeAction>(nodeHandle, qualified_name, boost::bind(&AdapterSetFlightModeAction::executeAdapterSetFlightModeActionCallback, this, _1), false);
		action_client = new actionlib::SimpleActionClient<adapter_space::SetFlightModeAction>(qualified_name);
		service_client = nodeHandle.serviceClient<mavros_msgs::SetMode>(service_name);

		cancel_subscriber = nodeHandle.subscribe<actionlib_msgs::GoalID>(cancel_topic, 1000, &AdapterSetFlightModeAction::CancelGoal, this);

		position_broker = positionBroker;
		status_broker = statusBroker;	

		LogInfo("Initialized.");
	}

	void AdapterSetFlightModeAction::SetOffboardMode()
	{
		adapter_space::SetFlightModeGoal goal;
		goal.mode = MODE_OFFBOARD;

		SendGoal(goal);
	}

	void AdapterSetFlightModeAction::SetHoldMode()
	{
		adapter_space::SetFlightModeGoal goal;
		goal.mode = MODE_MANUAL;

		SendGoal(goal);
	}

	adapter_space::SetFlightModeResultConstPtr AdapterSetFlightModeAction::SendGoal(adapter_space::SetFlightModeGoal goal)
	{
		ROS_INFO_NAMED(logger, "[%s] Triggering status query...", logger.c_str());

		action_client->sendGoal(goal);

		bool finished_before_timeout = action_client->waitForResult();

		if (finished_before_timeout)
		{
			actionlib::SimpleClientGoalState state = action_client->getState();

			LogInfo("Received result!");
		}
		else
		{
			LogInfo("Did not receive result!");
		}

		return action_client->getResult();
	}

	void AdapterSetFlightModeAction::executeAdapterSetFlightModeActionCallback(const adapter_space::SetFlightModeGoalConstPtr& goal)
	{
		LogInfo("Callback executing ...");

		string mode = goal.get()->mode;

		LogInfo("Goal received: mode: %s", mode.c_str());

		set_mode(mode);

		action_server->setSucceeded();

		LogInfo("inisihed executing Callback.");
	}

	void AdapterSetFlightModeAction::set_mode(string mode)
	{
		ROS_INFO_NAMED(logger, "[%s] mode switching ...", logger.c_str());

		adapter_space::BStatusGoal status_goal;
		adapter_space::BStatusResultConstPtr result = status_broker->SendGoal(status_goal);
		bool isArmed = result.get()->isArmed;

		mavros_msgs::SetMode* set_mode_cmd = new mavros_msgs::SetMode();

		if (mode == MODE_PREFLIGHT)
			set_mode_cmd->request.base_mode = 0;
		else if (mode == MODE_STABILIZED)
			set_mode_cmd->request.base_mode = isArmed ? MODE_STABILIZED_ARMED : MODE_STABILIZED_DISARMED;
		else if (mode == MODE_MANUAL)
			set_mode_cmd->request.base_mode = isArmed ? MODE_MANUAL_ARMED : MODE_MANUAL_DISARMED;
		else if (mode == MODE_GUIDED)
			set_mode_cmd->request.base_mode = isArmed ? MODE_GUIDED_ARMED : MODE_GUIDED_DISARMED;
		else if (mode == MODE_AUTO)
			set_mode_cmd->request.base_mode = isArmed ? MODE_AUTO_ARMED : MODE_AUTO_DISARMED;
		else if (mode == MODE_TEST)
			set_mode_cmd->request.base_mode = isArmed ? MODE_TEST_ARMED : MODE_TEST_DISARMED;
		else if (mode == MODE_OFFBOARD)
		{
			if (loc_mode == "gnss")
			{
				set_offboard_mode_global();
			}

			if (loc_mode == "mocap")
			{
				set_offboard_mode_local();
			}
			return;
		}
		else
			set_mode_cmd->request.custom_mode = mode;

		service_client.call(*set_mode_cmd);
	}

	void AdapterSetFlightModeAction::set_offboard_mode_global()
	{
		LogInfo("Begin: setting OFFBOARD mode (global) ...");

        setPointGlobalTopicPublisher = nodeHandle.advertise<geographic_msgs::GeoPoseStamped>(TOPIC_NAME_SETPOINT_GLOBAL, 1000);

		adapter_space::BPositionResultConstPtr posResult = position_broker->GetGlobalPosition();

        geographic_msgs::GeoPoseStamped msg;

        msg.pose.position.longitude = posResult.get()->geoPose.position.longitude;
        msg.pose.position.latitude = posResult.get()->geoPose.position.latitude;
        msg.pose.position.altitude = posResult.get()->geoPose.position.altitude;

        for (int i = 10; ros::ok() && i > 0; --i)
        {
            setPointGlobalTopicPublisher.publish(msg);
            ros::spinOnce();
            two_hz_rate.sleep();
			LogInfo("Init OFFBOARD points streaming.");
        }

		mavros_msgs::SetMode* set_mode_cmd = new mavros_msgs::SetMode();
		set_mode_cmd->request.custom_mode = "OFFBOARD";
        service_client.call(*set_mode_cmd);

		LogInfo("End: setting OFFBOARD mode (global) ...");
	}

	void AdapterSetFlightModeAction::set_offboard_mode_local()
	{
		LogInfo("Begin: setting OFFBOARD mode (local) ...");

        setPointLocalTopicPublisher = nodeHandle.advertise<geometry_msgs::PoseStamped>(TOPIC_NAME_SETPOINT_LOCAL, 1000);

		adapter_space::BPositionResultConstPtr posResult = position_broker->GetLocalPosition();

        geometry_msgs::PoseStamped msg;

		msg.pose.position.x = posResult.get()->twistPose.position.x;
		msg.pose.position.y = posResult.get()->twistPose.position.y;
		msg.pose.position.z = posResult.get()->twistPose.position.z;

        for (int i = 10; ros::ok() && i > 0; --i)
        {
            setPointLocalTopicPublisher.publish(msg);
            ros::spinOnce();
            two_hz_rate.sleep();
			LogInfo("Init OFFBOARD points streaming (local) point: %f, %f, %f.", msg.pose.position.x, msg.pose.position.y, msg.pose.position.z);
        }

		mavros_msgs::SetMode* set_mode_cmd = new mavros_msgs::SetMode();
		set_mode_cmd->request.custom_mode = "OFFBOARD";
        service_client.call(*set_mode_cmd);

		LogInfo("End: setting OFFBOARD mode (local) ...");
	}

	void AdapterSetFlightModeAction::CancelGoal(const actionlib_msgs::GoalID goalId)
	{
		LogInfo("Canceling all goals. (goalID: %s) ...", goalId.id.c_str());

		action_server->setPreempted();

		LogInfo("All goals canceled.");
	}

	void AdapterSetFlightModeAction::Start()
	{
		action_server->start();
		LogInfo("Started.");
	}
}
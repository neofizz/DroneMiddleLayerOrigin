#include "AdapterLandAction.h"
#include <adapter_space/LandAction.h>

namespace AdapterSpace
{
	AdapterLandAction::AdapterLandAction(string droneName, string actionName, AdapterBrokerSpace::AdapterStatusBroker* broker) : AdapterActionBase(droneName, actionName)
	{
		service_name = drone_name + "/mavros/cmd/land";

		status_broker = broker;

		action_server = new actionlib::SimpleActionServer<adapter_space::LandAction>(nodeHandle, qualified_name, boost::bind(&AdapterLandAction::executeAdapterLandActionCallback, this, _1), false);
		service_client = nodeHandle.serviceClient<mavros_msgs::CommandTOL>(service_name);

		cancel_subscriber = nodeHandle.subscribe<actionlib_msgs::GoalID>(cancel_topic, 1000, &AdapterLandAction::CancelGoal, this);

		LogInfo("Initialized.");
	}

	void AdapterLandAction::executeAdapterLandActionCallback(const adapter_space::LandGoalConstPtr& goal)
	{
		LogInfo("Callback executing ...");

		service_client.call(land_request_msg);

		adapter_space::BStatusResultConstPtr extended_state_result;

		ros::Rate loop_rate(10);

		do
		{
			extended_state_result = status_broker->GetStatus();
			LogInfo("Waiting to receive expected landed state ...");
			ros::spinOnce();
			loop_rate.sleep();
			LogInfo("landing state: %d", extended_state_result->landedState);
		} while(extended_state_result->landedState != 1);

		result.result.result = true;
		action_server->setSucceeded();
	}

	void AdapterLandAction::CancelGoal(const actionlib_msgs::GoalID goalId)
	{
		//ROS_INFO_NAMED(logger, "[%s] Canceling all goals. (goalID: %s) ...", full_action_name.c_str(), goalId.id.c_str());
		LogInfo("Canceling all goals. (goalID: %s) ...");

		action_server->setPreempted();

		LogInfo("All goals canceled.");
	}

	void AdapterLandAction::Start()
	{
		action_server->start();
		LogInfo("Started.");
	}
}
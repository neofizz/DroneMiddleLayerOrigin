#include "AdapterTakeOffAction.h"
#include <adapter_space/TakeOffAction.h>
#include <adapter_space/BPositionGoal.h>


namespace AdapterSpace
{
	AdapterTakeOffAction::AdapterTakeOffAction(string droneName, string actionName, string localization_mode,
		AdapterBrokerSpace::AdapterPositionBroker* broker, AdapterSetFlightModeAction* modeAction): AdapterActionBase(droneName, actionName)
	{
		service_name = drone_name + "/mavros/cmd/takeoff";
		loc_mode = localization_mode;
		mode_action = modeAction;

		position_broker = broker;

		if (loc_mode == "gnss")
		{
			action_server = new actionlib::SimpleActionServer<adapter_space::TakeOffAction>(
				nodeHandle, qualified_name, boost::bind(&AdapterTakeOffAction::executeAdapterTakeOffActionCallback_global, this, _1), false);
		}

		if (loc_mode == "mocap")
		{
			action_server = new actionlib::SimpleActionServer<adapter_space::TakeOffAction>(
				nodeHandle, qualified_name, boost::bind(&AdapterTakeOffAction::executeAdapterTakeOffActionCallback_local, this, _1), false);
		}

		
		service_client = nodeHandle.serviceClient<mavros_msgs::CommandTOL>(service_name);

		location_validator = new LocationValidator(drone_name, position_broker);
		mover = new AdapterSpaceSupport::Mover(drone_name, mode_action, location_validator);

		cancel_subscriber = nodeHandle.subscribe<actionlib_msgs::GoalID>(cancel_topic, 1000, &AdapterTakeOffAction::CancelGoal, this);

		LogInfo("Initialized.");
	}

	void AdapterTakeOffAction::executeAdapterTakeOffActionCallback_local(const adapter_space::TakeOffGoalConstPtr& goal)
	{
		LogInfo("Callback executing (local) ...");

		bool isAbsolute = goal.get()->isAbsolute;

		adapter_space::BPositionResultConstPtr currentLocation = position_broker->GetLocalPosition();

		LogInfo("Current Position: %f, %f, %f",
			currentLocation.get()->twistPose.position.x, currentLocation.get()->twistPose.position.y, currentLocation.get()->twistPose.position.z);

		LocalPoint* targetLocation = new LocalPoint();

		double targetX = currentLocation->twistPose.position.x;
		double targetY = currentLocation->twistPose.position.y;
		double targetZ = currentLocation->twistPose.position.z + goal.get()->altitude;

		targetLocation->Set(targetX, targetY, targetZ);

		LogInfo("Target Position: %f, %f, %f",
			targetLocation->x, targetLocation->y, targetLocation->z);
		
		mover->FlyToTargetLocal(targetLocation);

		/* mavros_msgs::CommandTOL takeoff_request_msg;

		takeoff_request_msg.request.longitude = 0;
		takeoff_request_msg.request.latitude = 0;
		takeoff_request_msg.request.altitude = targetLocation->z;

		service_client.call(takeoff_request_msg);

		location_validator->handle_local_pos_callback(targetLocation);

		ros::Rate loop_rate(10);

		while(!location_validator->isPositionReached)
		{
			ros::spinOnce();
			loop_rate.sleep();
			//ROS_INFO_NAMED(logger, "[%s] TakeOff altitude not reached.", full_action_name.c_str());
		} */

		LogInfo("TakeOff altitude reached.");

		result.result = true;
		action_server->setSucceeded(result);

		LogInfo("Finisihed executing Callback.");
	}

	void AdapterTakeOffAction::executeAdapterTakeOffActionCallback_global(const adapter_space::TakeOffGoalConstPtr& goal)
	{
		LogInfo("Callback executing ...");

		bool isAbsolute = goal.get()->isAbsolute;

		adapter_space::BPositionResultConstPtr currentLocation = position_broker->GetGlobalPosition();

		LogInfo("Current Position: %f, %f, %f",
			currentLocation.get()->geoPose.position.longitude, currentLocation.get()->geoPose.position.latitude, currentLocation.get()->geoPose.position.altitude);

		GeoPoint* targetLocation = new GeoPoint();

		double targetLongitude = currentLocation->geoPose.position.longitude;
		double targetLatitude = currentLocation->geoPose.position.latitude;
		double targetAltitude = currentLocation->geoPose.position.altitude + goal.get()->altitude;

		targetLocation->Set(targetLongitude, targetLatitude, targetAltitude, false);

		LogInfo("Target Position: %f, %f, %f, (AMSL: %f)",
			targetLocation->longitude, targetLocation->latitude, targetLocation->altitude_noAmsl, targetLocation->altitude_amsl);
		
		mavros_msgs::CommandTOL takeoff_request_msg;
		takeoff_request_msg.request.longitude = targetLocation->longitude;
		takeoff_request_msg.request.latitude = targetLocation->latitude;
		takeoff_request_msg.request.altitude = targetLocation->altitude_amsl;

		service_client.call(takeoff_request_msg);

		location_validator->handle_global_pos_callback(targetLocation);

		ros::Rate loop_rate(10);

		while(!location_validator->isPositionReached)
		{
			ros::spinOnce();
			loop_rate.sleep();
			//ROS_INFO_NAMED(logger, "[%s] TakeOff altitude not reached.", full_action_name.c_str());
		}

		LogInfo("TakeOff altitude reached.");

		result.result = true;
		action_server->setSucceeded(result);

		LogInfo("Finisihed executing Callback.");
	}

	void AdapterTakeOffAction::CancelGoal(const actionlib_msgs::GoalID goalId)
	{
		LogInfo("Canceling all goals. (goalID: %s) ...", goalId.id.c_str());

		action_server->setPreempted();

		LogInfo("All goals canceled.");
	}

	void AdapterTakeOffAction::Start()
	{
		action_server->start();
		LogInfo("Started.");
	}
}
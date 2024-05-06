#include "UniformMovingAction.h"

using namespace std;

namespace UniformSpace {

	UniformMovingAction::UniformMovingAction(string droneName, string actionName) : UniformActionBase(droneName, actionName)
	{
		action_client = new actionlib::SimpleActionClient<adapter_space::MovingAction>(qualified_action_name, true);

		ROS_INFO_NAMED(logger, "[%s] Initialized.", full_action_name.c_str());
	}

	void UniformMovingAction::MoveToGlobalAbsolut(double longitude, double latittude, double altitude)
	{
		ROS_INFO_NAMED(logger, "[%s]  Triggering. longi: %f, lati: %f, alti: %f", full_action_name.c_str(), longitude, latittude, altitude);

		ROS_INFO_NAMED(logger, "[%s] Waiting for server...", full_action_name.c_str());
		action_client->waitForServer();

		adapter_space::MovingGoal goal;
		goal.mode = "1";
		goal.isAbsolute = true;
		goal.longitude = longitude;
		goal.latitude = latittude;
		goal.altitude = altitude;

		send_and_wait_for_result(goal);
	}

	void UniformMovingAction::MoveToGlobalRelative(double longitude, double latittude, double altitude)
	{
		ROS_INFO_NAMED(logger, "[%s]  Triggering MoveToGlobalRelative. longi: %f, lati: %f, alti: %f", full_action_name.c_str(), longitude, latittude, altitude);

		ROS_INFO_NAMED(logger, "[%s] Waiting for server...", full_action_name.c_str());
		action_client->waitForServer();

		adapter_space::MovingGoal goal;
		goal.mode = "1";
		goal.isAbsolute = false;
		goal.longitude = longitude;
		goal.latitude = latittude;
		goal.altitude = altitude;

		send_and_wait_for_result(goal);
	}

	void UniformMovingAction::MoveToLocalAbsolut(double x, double y, double z)
	{
		ROS_INFO_NAMED(logger, "[%s]  Triggering MoveToLocalAbsolut. x: %f, y: %f, z: %f", full_action_name.c_str(), x, y, z);

		ROS_INFO_NAMED(logger, "[%s] Waiting for server...", full_action_name.c_str());
		action_client->waitForServer();

		adapter_space::MovingGoal goal;
		goal.mode = "2";
		goal.isAbsolute = true;
		goal.x = x;
		goal.y = y;
		goal.z = z;

		send_and_wait_for_result(goal);
	}

	void UniformMovingAction::MoveToLocalRelative(double x, double y, double z)
	{
		ROS_INFO_NAMED(logger, "[%s]  Triggering MoveToLocalRelative. x: %f, y: %f, z: %f", full_action_name.c_str(), x, y, z);

		ROS_INFO_NAMED(logger, "[%s] Waiting for server...", full_action_name.c_str());
		action_client->waitForServer();

		adapter_space::MovingGoal goal;
		goal.mode = "2";
		goal.isAbsolute = false;
		goal.x = x;
		goal.y = y;
		goal.z = z;

		send_and_wait_for_result(goal);
	}

	void UniformMovingAction::HeadTowardsOn(double x, double y, double z)
	{
		ROS_INFO_NAMED(logger, "[%s]  Triggering HeadTowardsOn. x: %f, y: %f, z: %f", full_action_name.c_str(), x, y, z);

		ROS_INFO_NAMED(logger, "[%s] Waiting for server...", full_action_name.c_str());
		action_client->waitForServer();

		adapter_space::MovingGoal goal;
		goal.mode = "3";
		goal.isAbsolute = true;
		goal.x = x;
		goal.y = y;
		goal.z = z;

		send_and_wait_for_result(goal);
	}

	void UniformMovingAction::HeadTowardsOff()
	{
		ROS_INFO_NAMED(logger, "[%s]  Triggering HeadTowardsOff.", full_action_name.c_str());

		ROS_INFO_NAMED(logger, "[%s] Waiting for server...", full_action_name.c_str());
		action_client->waitForServer();

		adapter_space::MovingGoal goal;
		goal.mode = "4";
		/* goal.x = 0;
		goal.y = 0;
		goal.z = 0; */

		send_and_wait_for_result(goal);
	}

	void UniformMovingAction::send_and_wait_for_result(adapter_space::MovingGoal goal)
	{
		ROS_INFO_NAMED(logger, "[%s] Sending goal to server ...", full_action_name.c_str());
		action_client->sendGoal(goal);

		ROS_INFO_NAMED(logger, "[%s] Waiting for result from server...", full_action_name.c_str());
		bool finished_before_timeout = action_client->waitForResult(ros::Duration(action_timeout));

		if (finished_before_timeout)
		{
			actionlib::SimpleClientGoalState state = action_client->getState();

			ROS_INFO_NAMED(logger, "[%s] Received result!", full_action_name.c_str());
		}
		else
		{
			ROS_INFO_NAMED(logger, "[%s] Did not receive result!", full_action_name.c_str());
		}
	}
}
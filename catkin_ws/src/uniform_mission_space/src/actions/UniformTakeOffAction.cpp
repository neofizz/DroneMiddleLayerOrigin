#include "UniformTakeOffAction.h"

using namespace std;

namespace UniformSpace {

	UniformTakeOffAction::UniformTakeOffAction(string droneName, string actionName) : UniformActionBase(droneName, actionName)
	{
		action_client = new actionlib::SimpleActionClient<adapter_space::TakeOffAction>(qualified_action_name, true);

		LogInfo("Initialized.");
		//ROS_INFO_NAMED(logger, "[%s] .", full_action_name.c_str());
	}

	void UniformTakeOffAction::Trigger(double height)
	{
		LogInfo("Triggering. height=%f", height);
		//ROS_INFO_NAMED(logger, "[%s] Triggering. height=%f", full_action_name.c_str(), height);

		LogInfo("Waiting for server...");
		//ROS_INFO_NAMED(logger, "Waiting for server...", full_action_name.c_str());
		action_client->waitForServer();

		adapter_space::TakeOffGoal goal;
		goal.altitude = height;
		goal.isAbsolute = false;

		LogInfo("Sending goal to server ...");
		//ROS_INFO_NAMED(logger, "[%s] Sending goal to server ...", full_action_name.c_str());
		action_client->sendGoal(goal);

		LogInfo("Waiting for result from server...");
		//ROS_INFO_NAMED(logger, "[%s] Waiting for result from server...", full_action_name.c_str());

		bool finished_before_timeout = action_client->waitForResult(ros::Duration(action_timeout));

		if (finished_before_timeout)
		{
			actionlib::SimpleClientGoalState state = action_client->getState();

			LogInfo("Received result!");
			LogInfo("State: %s", state.getText().c_str());
			//ROS_INFO_NAMED(logger, "Received result!");
			//ROS_INFO_NAMED(logger, "State: %s", state.getText());
		}
		else
		{
			LogInfo("Did not receive result!");
			//ROS_INFO_NAMED(logger, "Did not receive result!");
		}
	}
}
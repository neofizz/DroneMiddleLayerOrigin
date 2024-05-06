#include "UniformLandAction.h"

using namespace std;

namespace UniformSpace {

	UniformLandAction::UniformLandAction(string droneName, string actionName) : UniformActionBase(droneName, actionName)
	{
		action_client = new actionlib::SimpleActionClient<adapter_space::LandAction>(qualified_action_name, true);

		ROS_INFO_NAMED(logger, "[%s] Initialized.", full_action_name.c_str());
	}

	void UniformLandAction::Trigger()
	{
		ROS_INFO_NAMED(logger, "[%s] Triggering. height=%f", full_action_name.c_str());

		ROS_INFO_NAMED(logger, "Waiting for server...", full_action_name.c_str());
		action_client->waitForServer();

		adapter_space::LandGoal goal;

		ROS_INFO_NAMED(logger, "[%s] Sending goal to server ...", full_action_name.c_str());
		action_client->sendGoal(goal);

		ROS_INFO_NAMED(logger, "[%s] Waiting for result from server...", full_action_name.c_str());

		bool finished_before_timeout = action_client->waitForResult(ros::Duration(action_timeout));

		if (finished_before_timeout)
		{
			actionlib::SimpleClientGoalState state = action_client->getState();

			ROS_INFO_NAMED(logger, "Received result!");
			ROS_INFO_NAMED(logger, "State: %s", state.getText());
		}
		else
		{
			ROS_INFO_NAMED(logger, "Did not receive result!");
		}
	}
}
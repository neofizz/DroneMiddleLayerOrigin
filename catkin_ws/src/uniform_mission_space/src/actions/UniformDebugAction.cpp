#include "UniformDebugAction.h"

using namespace std;

namespace UniformSpace
{
	UniformDebugAction::UniformDebugAction(string droneName, string actionName) : UniformActionBase(droneName, actionName)
	{
		action_client = new actionlib::SimpleActionClient<adapter_space::DebugAction>(qualified_action_name, true);

		ROS_INFO_NAMED(logger, "[%s] Initialized.", full_action_name.c_str());
	}

	void UniformDebugAction::Trigger(string debug)
	{
		ROS_INFO_NAMED(logger, "[%s]  Triggering. debug=%s", full_action_name.c_str(), debug);

		ROS_INFO_NAMED(logger, "[%s] Waiting for server...", full_action_name.c_str());
		action_client->waitForServer();

		adapter_space::DebugGoal goal;
		goal.debug = debug;

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
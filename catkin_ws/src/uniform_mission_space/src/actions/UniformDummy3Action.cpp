#include "UniformDummy3Action.h"

using namespace std;

namespace UniformSpace
{
	UniformDummy3Action::UniformDummy3Action(string droneName, string actionName) : UniformActionBase(droneName, actionName)
	{
		action_client = new actionlib::SimpleActionClient<adapter_space::Dummy3Action>(qualified_action_name, true);

		LogInfo("Initialized.");
	}

	void UniformDummy3Action::Trigger(int maxDuration)
	{
		LogInfo("Triggering. max_time: %d", maxDuration);
		LogInfo("Waiting for server...");

		action_client->waitForServer();

		adapter_space::Dummy3Goal goal;
		goal.max_duration = maxDuration;

		LogInfo("Sending goal to server ...");
		action_client->sendGoal(goal);

		LogInfo("Waiting for result from server...");
		bool finished_before_timeout = action_client->waitForResult(ros::Duration(action_timeout));

		if (finished_before_timeout)
		{
			actionlib::SimpleClientGoalState state = action_client->getState();
			LogInfo("Received result!");
		}
		else
		{
			LogInfo("Did not receive result!");
		}
	}
}
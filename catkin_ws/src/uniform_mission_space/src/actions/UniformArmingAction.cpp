#include "UniformArmingAction.h"

using namespace std;

namespace UniformSpace
{
	UniformArmingAction::UniformArmingAction(string droneName, string actionName) : UniformActionBase(droneName, actionName)
	{
		action_client = new actionlib::SimpleActionClient<adapter_space::ArmingAction>(qualified_action_name, true);

		LogInfo("Initialized.");
	}

	void UniformArmingAction::Trigger(bool shouldArm)
	{
		LogInfo("Triggering. shouldArm: %s", shouldArm ? "true" : "false");

		LogInfo("Waiting for server...");
		action_client->waitForServer();

		adapter_space::ArmingGoal goal;
		goal.shouldArm = shouldArm;

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
	
	int UniformArmingAction::warp_me()
	{
		
		string s = get_full_actionname("1701");
		cout << s << "\n";
		action_name = "1701";
		return 1701;
	}
}
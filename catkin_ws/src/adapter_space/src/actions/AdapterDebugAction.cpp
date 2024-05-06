#include "AdapterDebugAction.h"

namespace AdapterSpace
{
	AdapterDebugAction::AdapterDebugAction(string droneName, string actionName,
		AdapterBrokerSpace::AdapterPositionBroker* broker, AdapterSetFlightModeAction* modeAction) : AdapterActionBase(droneName, actionName)
	{
		position_broker = broker;
		mode_action = modeAction;

		action_server = new actionlib::SimpleActionServer<adapter_space::DebugAction>(nodeHandle, qualified_name, boost::bind(&AdapterDebugAction::executeAdapterDebugActionCallback, this, _1), false);
		action_client = new actionlib::SimpleActionClient<adapter_space::DebugAction>(name);

		LogInfo("Initialized.");
	}

	void AdapterDebugAction::SendStreamOn()
	{
		adapter_space::DebugGoal goal;
		goal.debug = "g1";
		
		action_client->sendGoal(goal);
	}

	void AdapterDebugAction::SendStreamOff()
	{
		adapter_space::DebugGoal goal;
		goal.debug = "g0";
		
		action_client->sendGoal(goal);
	}

	adapter_space::DebugResultConstPtr AdapterDebugAction::SendGoal(adapter_space::DebugGoal goal)
	{
		LogInfo("Waiting for server ...");
		action_client->waitForServer();

		LogInfo("Triggering position query ...");

		action_client->sendGoal(goal);

		LogInfo("Waiting ...");

		bool finished_before_timeout = action_client->waitForResult();

		LogInfo("Received ...");

		if (finished_before_timeout)
		{
			actionlib::SimpleClientGoalState state = action_client->getState();

			LogInfo("Received result!");
		}
		else
		{
			LogInfo("Did not receive result!");
		}

		LogInfo("Goal sending finsihed.");

		if (action_client == nullptr)
		{
			LogInfo("action_client is Null!");
		}

		return action_client->getResult();
	}

	void AdapterDebugAction::executeAdapterDebugActionCallback(const adapter_space::DebugGoalConstPtr& goal)
	{
		LogInfo("Callback executing ...");

		if (goal.get()->debug == "g")
		{
			LogInfo("globalOne");
			position_broker->GetGlobalPosition();
		}

		if (goal.get()->debug == "l")
		{
			LogInfo("localOne");
			position_broker->GetLocalPosition();

		}

		if (goal.get()->debug == "g1")
		{
			LogInfo("globalStreamOn");
			position_broker->StartGlobalStreaming();
		}

		if (goal.get()->debug == "g0")
		{
			LogInfo("globalStreamOff");
			position_broker->StopGlobalStreaming();
		}

		if (goal.get()->debug == "m0")
		{
			LogInfo("m0");
			position_broker->StopGlobalStreaming();
		}

		result.result.result = true;

		action_server->setSucceeded(result.result);
		
		LogInfo("Finisihed executing Callback.");
	}

	void AdapterDebugAction::CancelGoal(const actionlib_msgs::GoalID goalId)
	{
		//ROS_INFO_NAMED(logger, "[%s] Canceling all goals. (goalID: %s) ...", full_action_name.c_str(), goalId.id.c_str());
		LogInfo("Canceling all goals. (goalID: %s) ...");

		action_server->setPreempted();

		LogInfo("All goals canceled.");
	}

	void AdapterDebugAction::Start()
	{
		action_server->start();
		LogInfo("Started");
	}
}
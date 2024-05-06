#include <ros/ros.h>
#include <string>
#include <actionlib/server/simple_action_server.h>
#include "AdapterDummy3Action.h"
#include <adapter_space/Dummy3Goal.h>
#include <cstdlib>

namespace AdapterSpace
{
	AdapterDummy3Action::AdapterDummy3Action(string droneName, string actionName) : AdapterActionBase(droneName, actionName)
	{
		action_server = new actionlib::SimpleActionServer<adapter_space::Dummy3Action>(nodeHandle, qualified_name, boost::bind(&AdapterDummy3Action::executeAdapterDummy3ActionCallback, this, _1), false);
		cancel_subscriber = nodeHandle.subscribe<actionlib_msgs::GoalID>(cancel_topic, 1000, &AdapterDummy3Action::CancelGoal, this);

		LogInfo("Initialized.");
	}
	
	void AdapterDummy3Action::executeAdapterDummy3ActionCallback(const adapter_space::Dummy3GoalConstPtr& goal)
	{
		LogInfo("Callback executing. (max duration): %d)", goal->max_duration);
		
		srand(time(0));
		int total_sleep = 0;
		
		while (total_sleep == 0)
			total_sleep = rand() % goal.get()->max_duration;
		
		int countdown = total_sleep;

		while (countdown >= 0)
		{
			LogInfo("Dummy3 Action -> Sleeping %d of %d --> %d more to go ...", total_sleep - countdown, total_sleep, countdown);
			cout << "sleep " + std::to_string(countdown) + " of " + std::to_string(total_sleep);
			std::this_thread::sleep_for(std::chrono::seconds(1));
			countdown -= 1;
			feedback.feedback.current_time = countdown;
		}

		result.result.duration = total_sleep;
		action_server->setSucceeded();
		
		LogInfo("Finisihed executing Callback.");
	}

	void AdapterDummy3Action::CancelGoal(const actionlib_msgs::GoalID goalId)
	{
		LogInfo("Canceling all goals. (goal ID: %s)", goalId.id.c_str());
		action_server->setPreempted();
		LogInfo("All goals canceled.");
	}

	void AdapterDummy3Action::Start()
	{
		action_server->start();
		LogInfo("Stared.");
	}
}
#include "UniformOrbitAction.h"

using namespace std;

namespace UniformSpace {

	UniformOrbitAction::UniformOrbitAction(string droneName, string actionName) : UniformActionBase(droneName, actionName)
	{
		action_client = new actionlib::SimpleActionClient<adapter_space::OrbitAction>(qualified_action_name, true);

		ROS_INFO_NAMED(logger, "[%s] Initialized.", full_action_name.c_str());
	}

	void UniformOrbitAction::StartOrbit(double radius)
	{
		ROS_INFO_NAMED(logger, "[%s]  Triggering orbiting ....");

		ROS_INFO_NAMED(logger, "[%s] Waiting for server...", full_action_name.c_str());
		action_client->waitForServer();

		adapter_space::OrbitGoal goal;

		goal.radius = radius;

		send_and_wait_for_result(goal);
	}

	void UniformOrbitAction::StopOrbit()
	{
		ROS_INFO_NAMED(logger, "[%s]  Stopp orbiting ....");

		ROS_INFO_NAMED(logger, "[%s] Waiting for server...", full_action_name.c_str());
		action_client->waitForServer();

		adapter_space::OrbitGoal goal;

		goal.radius = 0;

		send_and_wait_for_result(goal);
	}

    void UniformOrbitAction::send_and_wait_for_result(adapter_space::OrbitGoal goal)
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
#include <ros/ros.h>
#include <string>
#include <actionlib/server/simple_action_server.h>
#include "AdapterArmingAction.h"

namespace AdapterSpace
{
	AdapterArmingAction::AdapterArmingAction(string droneName, string actionName, AdapterBrokerSpace::AdapterStatusBroker* broker) : AdapterActionBase(droneName, actionName)
	{
		service_name = droneName + "/mavros/cmd/arming";
		status_broker = broker;

		action_server = new actionlib::SimpleActionServer<adapter_space::ArmingAction>(nodeHandle, qualified_name, boost::bind(&AdapterArmingAction::executeAdapterArmingActionCallback, this, _1), false);
		service_client = nodeHandle.serviceClient<mavros_msgs::CommandBool>(service_name);

		cancel_subscriber = nodeHandle.subscribe<actionlib_msgs::GoalID>(cancel_topic, 1000, &AdapterArmingAction::CancelGoal, this);

		LogInfo("Initialized. (service name: %s)", service_name.c_str());
	}
	
	void AdapterArmingAction::executeAdapterArmingActionCallback(const adapter_space::ArmingGoalConstPtr& goal)
	{
		LogInfo("Callback executing. (shouldArm: %s)", goal->shouldArm ? "true" : "false");

		bool shouldArm = goal.get()->shouldArm;
		arm_cmd.request.value = shouldArm;

		service_client.call(arm_cmd);

		//adapter_space::BStatusResultConstPtr state_result = status_broker->GetStatus();

		adapter_space::BStatusResultConstPtr state_result;

		ros::Rate loop_rate(10);

		do
		{
			state_result = status_broker->GetStatus();
			LogInfo("Waiting to receive expected armed state (= %s)...", goal->shouldArm ? "true" : "false");
			ros::spinOnce();
			loop_rate.sleep();
		} while(state_result->isArmed != shouldArm);

		// while (state_result->isArmed != shouldArm)
		// {
		// 	LogInfo("Waiting to receive expected armed state (= %s)...", goal->shouldArm ? "true" : "false");
		// 	ros::spinOnce();
		// 	loop_rate.sleep();
		// 	state_result = status_broker->GetStatus();
		// }

		result.result.result = true;
		action_server->setSucceeded();
		
		LogInfo("Finisihed executing Callback.");
	}

	void AdapterArmingAction::CancelGoal(const actionlib_msgs::GoalID goalId)
	{
		LogInfo("Canceling all goals. (goal ID: %s)", goalId.id.c_str());
		action_server->setPreempted();
		LogInfo("All goals canceled.");
	}

	void AdapterArmingAction::Start()
	{
		action_server->start();
		LogInfo("Stared.");
	}
}
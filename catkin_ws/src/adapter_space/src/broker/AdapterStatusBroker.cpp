#include "AdapterStatusBroker.h"

namespace AdapterBrokerSpace
{
	AdapterStatusBroker::AdapterStatusBroker(string droneName, string brokerName) : AdapterBrokerBase(droneName, brokerName)
	{
		state_topic_name = drone_name + "/mavros/state";
		extended_state_topic_name = drone_name + "/mavros/extended_state";

		action_server = new actionlib::SimpleActionServer<adapter_space::BStatusAction>(nodeHandle, qualified_name, boost::bind(&AdapterStatusBroker::executeStatusBrokerActionCallback, this, _1), false);
		action_client = new actionlib::SimpleActionClient<adapter_space::BStatusAction>(qualified_name);

		cancel_subscriber = nodeHandle.subscribe<actionlib_msgs::GoalID>(cancel_topic, 1000, &AdapterStatusBroker::CancelGoal, this);

		//ros::Rate loop_rate(10);
		LogInfo("Initialized.");
	}

	adapter_space::BStatusResultConstPtr AdapterStatusBroker::GetStatus()
	{
		LogInfo("Getting status ...");

		adapter_space::BStatusGoal statusGoal;
		adapter_space::BStatusResultConstPtr statusResult = SendGoal(statusGoal);

		return statusResult;
	}

	void AdapterStatusBroker::executeStatusBrokerActionCallback(const adapter_space::BStatusGoalConstPtr& goal)
	{
		LogInfo("Callback triggered.");

		shutdownStateSubscription = true;
		shutdownExtendedStateSubscription = true;
		state_subscriber = nodeHandle.subscribe(state_topic_name, 1000, &AdapterStatusBroker::executeStateTopicCallback, this);
		extended_state_subscriber = nodeHandle.subscribe(extended_state_topic_name, 1000, &AdapterStatusBroker::executeExtendedStateTopicCallback, this);

		ros::Rate loop_rate(10);

		isStateReceived = false;
		isExtendedStateReceived = false;

		while (!isStateReceived)
		{
			LogInfo("Waiting to receive state ...");
			ros::spinOnce();
			loop_rate.sleep();
		}

		while (!isExtendedStateReceived)
		{
			LogInfo("Waiting to receive extended state ...");
			ros::spinOnce();
			loop_rate.sleep();
		}

		LogInfo("Goal succeeded.");
		action_server->setSucceeded(result);
	}

	adapter_space::BStatusResultConstPtr AdapterStatusBroker::SendGoal(adapter_space::BStatusGoal goal)
	{
		LogInfo("Waiting for server ...");

		action_client->waitForServer();

		LogInfo("Triggering status query ...");

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

		LogInfo("goal sending finsihed.");

		action_client->getResult();

		return action_client->getResult();
	}

	void AdapterStatusBroker::executeStateTopicCallback(const mavros_msgs::State::ConstPtr& msg)
	{
		LogInfo("Filling state ...");

		result.hasManualInput = msg.get()->manual_input;
		result.isArmed = msg.get()->armed;
		result.isConnected = msg.get()->connected;
		result.isGuided = msg.get()->guided;
		result.mode = msg.get()->mode;
		result.system_status = msg.get()->system_status;

		if (shutdownStateSubscription)
		{
			state_subscriber.shutdown();
			shutdownStateSubscription = false;
			LogInfo("Shut down subscriber and publisher: state.");
		}

		isStateReceived = true;

		LogInfo("Filled.");
	}

	void AdapterStatusBroker::executeExtendedStateTopicCallback(const mavros_msgs::ExtendedState::ConstPtr& msg)
	{
		LogInfo("Filling extended state ...");

		result.landedState = msg.get()->landed_state;

		LogInfo("+++ %d", result.landedState);

		if (shutdownExtendedStateSubscription)
		{
			extended_state_subscriber.shutdown();
			shutdownExtendedStateSubscription = false;
			LogInfo("Shut down subscriber and publisher: extended state.");
		}

		isExtendedStateReceived = true;

		LogInfo("Filled.");
	}

	void AdapterStatusBroker::CancelGoal(const actionlib_msgs::GoalID goalId)
	{
		LogInfo("Canceling all goals. (goalID: %s) ...", goalId.id.c_str());

		action_server->setPreempted();

		LogInfo("All goals canceled.");
	}

	void AdapterStatusBroker::Start()
	{
		action_server->start();

		LogInfo("Started.");
	}
}
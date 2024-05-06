#ifndef ADAPTER_STATUS_BROKER_H_
#define ADAPTER_STATUS_BROKER_H_

#include <actionlib/server/simple_action_server.h>
#include <actionlib/client/simple_action_client.h>
#include "AdapterBrokerBase.h"
#include <adapter_space/BStatusAction.h>
#include <mavros_msgs/State.h>
#include <mavros_msgs/ExtendedState.h>

namespace AdapterBrokerSpace
{
	class AdapterStatusBroker : protected AdapterBrokerBase
	{
	protected:

		actionlib::SimpleActionServer<adapter_space::BStatusAction>* action_server;
		actionlib::SimpleActionClient<adapter_space::BStatusAction>* action_client;
		adapter_space::BStatusFeedback feedback;
		adapter_space::BStatusResult result;

		ros::Subscriber state_subscriber;
		ros::Subscriber extended_state_subscriber;
		string state_topic_name;
		string extended_state_topic_name;

		bool shutdownStateSubscription;
		bool shutdownExtendedStateSubscription;
		bool isStateReceived;
		bool isExtendedStateReceived;



		void executeStatusBrokerActionCallback(const adapter_space::BStatusGoalConstPtr& goal);

		void executeStateTopicCallback(const mavros_msgs::State::ConstPtr& msg);
		void executeExtendedStateTopicCallback(const mavros_msgs::ExtendedState::ConstPtr& msg);

	public:

		AdapterStatusBroker(string drone_name, string name);
		void Start();
		adapter_space::BStatusResultConstPtr SendGoal(adapter_space::BStatusGoal goal);
		void CancelGoal(const actionlib_msgs::GoalID msg);

		adapter_space::BStatusResultConstPtr GetStatus();
	};
}

#endif // ADAPTER_STATUS_BROKER_H_
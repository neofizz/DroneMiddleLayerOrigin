#ifndef ADAPTER_POSITION_BROKER_H_
#define ADAPTER_POSITION_BROKER_H_

#include "AdapterBrokerBase.h"
#include <adapter_space/BPositionAction.h>
#include "sensor_msgs/NavSatFix.h"
#include <geometry_msgs/PoseStamped.h>
#include <geographic_msgs/GeoPoseStamped.h>
#include <actionlib/server/simple_action_server.h>
#include <actionlib/client/simple_action_client.h>

namespace AdapterBrokerSpace
{
	string const static GEO_WGS84_TYPE = "GLOBAL";
	string const static LOCAL_TYPE = "LOCAL";
	string const static SINGLE = "SINGLE";
	string const static STREAM_ON = "STREAM_ON";
	string const static STREAM_OFF = "STREAM_OFF";

	class AdapterPositionBroker : protected AdapterBrokerBase
	{
		private:

			void printGoalState();

		protected:

			actionlib::SimpleActionServer<adapter_space::BPositionAction>* action_server;
			actionlib::SimpleActionClient<adapter_space::BPositionAction>* action_client;
			adapter_space::BPositionFeedback feedback;
			adapter_space::BPositionResult result;

			ros::Subscriber globalPositionTopicSubscriber;
			ros::Subscriber localPositionTopicSubscriber;

			bool globalTopicDataReceived;
			bool localTopicDataReceived;
			bool shutdownSubscription;

			void executePositionBrokerActionCallback(const adapter_space::BPositionGoalConstPtr& goal);
			void executeGlobalPositionTopicCallback(const sensor_msgs::NavSatFix::ConstPtr& msg);
			void executeLocalPositionTopicCallback(const geometry_msgs::PoseStamped::ConstPtr& msg);

			void attachAndListenToTopics(string kind);

			void done_cb();
			void active_cb();
			void feedback_cb();

		public:

			ros::Publisher GlobalPositionTopicPublisher;
			ros::Publisher LocalPositionTopicPublisher;
			chrono::milliseconds sleepingDuration = chrono::milliseconds(100);

			AdapterPositionBroker(string drone_name, string name);
			void Start();
			adapter_space::BPositionResultConstPtr SendGoal(adapter_space::BPositionGoal goal);
			void CancelGoal(const actionlib_msgs::GoalID msg);

			adapter_space::BPositionResultConstPtr GetGlobalPosition();
			adapter_space::BPositionResultConstPtr GetLocalPosition();
			adapter_space::BPositionResultConstPtr StartGlobalStreaming();
			adapter_space::BPositionResultConstPtr StopGlobalStreaming();
			adapter_space::BPositionResultConstPtr StartLocalStreaming();
			adapter_space::BPositionResultConstPtr StopLocalStreaming();
	};
}

#endif // ADAPTER_POSITION_BROKER_H_
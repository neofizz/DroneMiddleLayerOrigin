#include <adapter_space/BPositionAction.h>
#include <geometry_msgs/PoseStamped.h>
#include <geographic_msgs/GeoPoseStamped.h>
#include "UniformBrokerBase.h"

using namespace adapter_space;

namespace UniformSpace
{
	string const static GEO_WGS84_TYPE = "GLOBAL";
	string const static LOCAL_TYPE = "LOCAL";
	string const static SINGLE = "SINGLE";
	string const static STREAM_ON = "STREAM_ON";
	string const static STREAM_OFF = "STREAM_OFF";

	string const static INBOUND_GLOBAL_POSITION_TOPIC_NAME = "/AdapterSpace/PositionBroker/Global";
	string const static INBOUND_LOCAL_POSITION_TOPIC_NAME = "/AdapterSpace/PositionBroker/Local";

	class UniformPositionBroker : public UniformBrokerBase
	{
		protected:

			actionlib::SimpleActionClient<BPositionAction>* action_client;

			geometry_msgs::PoseStamped xyz;
			geographic_msgs::GeoPoseStamped lla;

			ros::NodeHandle nodeHandle;
			string inboundLocalPositionTopicName;
			string inboundGlobalPositionTopicName;
			ros::Subscriber globalPositionTopicSubscriber;
			ros::Subscriber localPositionTopicSubscriber;

			void executeLocalPositionTopicCallback(const geometry_msgs::PoseStamped::ConstPtr& msg);
			void executeGlobalPositionTopicCallback(const geographic_msgs::GeoPoseStamped::ConstPtr& msg);

			bool listenToLocalPositionTopic;
			bool listenToGlobalPositionTopic;

			int ros_rate = 10;

			geometry_msgs::PoseStamped get_local_pose();
			geographic_msgs::GeoPoseStamped get_geo_pose();

		public:

			UniformPositionBroker(string droneName, string brokerName);

			BPositionResultConstPtr Trigger(string kind, string mode);

			geometry_msgs::PoseStamped RequestXYZ();
			geographic_msgs::GeoPoseStamped RequestLLA();

			void StartStreamXYZ();
			geometry_msgs::PoseStamped GetXYZFromStream();
			void StopStreamXYZ();

			void StartStreamLLA();
			geographic_msgs::GeoPoseStamped GetLLAFromStream();
			void StopStreamLLA();

			bool IsLocallyStreaming();
			bool IsGloballyStreaming();

			double GetX();
			double GetY();
			double GetZ();
			geometry_msgs::PoseStamped GetXYZ();

			double GetLongitude();
			double GetLatitude();
			double GetAltitude();
			geographic_msgs::GeoPoseStamped GetLLA();
	};
}
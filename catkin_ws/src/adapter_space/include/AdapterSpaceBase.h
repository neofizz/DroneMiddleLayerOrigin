#ifndef ADAPTER_SPACE_H
#define ADAPTER_SPACE_H

#include <string>
#include <ros/ros.h>

using namespace std;

namespace AdapterSpace
{
    string const static GeneralOutboundGlobalPositionTopicName = "/AdapterSpace/PositionBroker/Global";
    string const static GeneralOutboundLocalPositionTopicName = "/AdapterSpace/PositionBroker/Local";
    string const static GeneralInboundGlobalPositionTopicName = "/mavros/global_position/global";
    string const static GeneralInboundLocalPositionTopicName = "/mavros/local_position/pose";

    class AdapterSpaceBase
    {
        protected:

            ros::NodeHandle nodeHandle;

            string drone_name;
			string name;
			string qualified_name;
			string full_name;
            string logger;
			string debug_logger;
            string type;
            string cancel_topic;

            string SpecificOutboundGlobalPositionTopicName;
            string SpecificOutboundLocalPositionTopicName;
            string SpecificInboundGlobalPositionTopicName;
            string SpecificInboundLocalPositionTopicName;

            ros::Subscriber cancel_subscriber;

            template<typename... Args>
			void LogInfo(string logMessage, Args... arg)
			{
				string log_info = "(%s) [%s] [%s] ";
				string entireMessage = log_info + logMessage;
				const char* c_message = entireMessage.c_str();

				ROS_INFO_NAMED(logger, c_message, drone_name.c_str(), full_name.c_str(), qualified_name.c_str(), arg...);
			}

            template<typename... Args>
			void LogDebug(string logMessage, Args... arg)
			{
				string log_info = "(%s) [%s] [%s] ";
				string entireMessage = log_info + logMessage;
				const char* c_message = entireMessage.c_str();

				ROS_DEBUG_NAMED(debug_logger, c_message, drone_name.c_str(), full_name.c_str(), qualified_name.c_str(), arg...);
			}

        public:

            AdapterSpaceBase(string droneName, string name, string type);
    };
}

#endif // ADAPTER_SPACE_H
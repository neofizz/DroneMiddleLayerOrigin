#ifndef UNIFORM_BROKER_BASE_H_
#define UNIFORM_BROKER_BASE_H_

#include <ros/ros.h>
#include <string>
#include <actionlib/client/simple_action_client.h>

using namespace std;

namespace UniformSpace
{
	class UniformBrokerBase
	{
		protected:

			string logger;
			string drone_name;
			string broker_name;
			string full_broker_name;
			string qualified_broker_name;

			UniformBrokerBase(string droneName, string brokerName);

			string get_full_brokername(string name);

			double action_timeout = 15.0;

			template<typename... Args>
			void LogInfo(string logMessage, Args... arg)
			{
				string log_info = "(%s) [%s] [%s] ";
				string entireMessage = log_info + logMessage;
				const char* c_message = entireMessage.c_str();

				ROS_INFO_NAMED(logger, c_message, drone_name.c_str(), full_broker_name.c_str(), qualified_broker_name.c_str(), arg...);
			}
	};
}

#endif // UNIFORM_BROKER_BASE_H_
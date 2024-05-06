#ifndef UNIFORM_SPACE_H
#define UNIFORM_SPACE_H

#include <ros/ros.h>
#include <string>
#include <actionlib/client/simple_action_client.h>

using namespace std;

int warp_me();

namespace UniformSpace {
	
	class UniformActionBase
	{
		protected:

			string logger;
			string drone_name;
			string action_name;
			string full_action_name;
			string qualified_action_name;

			double action_timeout = 60.0;

			UniformActionBase(string droneName, string actionName);

			string get_full_actionname(string name);

			template<typename... Args>
			void LogInfo(string logMessage, Args... arg)
			{
				string log_info = "(%s) [%s] [%s] ";
				string entireMessage = log_info + logMessage;
				const char* c_message = entireMessage.c_str();

				ROS_INFO_NAMED(logger, c_message, drone_name.c_str(), full_action_name.c_str(), qualified_action_name.c_str(), arg...);
			}
	};
}

#endif // UNIFORM_SPACE_H
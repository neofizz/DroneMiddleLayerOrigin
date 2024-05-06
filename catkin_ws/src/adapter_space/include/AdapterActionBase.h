#ifndef ADAPTER_SPACE_BASE_H
#define ADAPTER_SPACE_BASE_H

#include "AdapterSpaceBase.h"
//#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <actionlib_msgs/GoalID.h>
#include <mavros/mavros_uas.h>
#include <mavros/mavros.h>
#include <mavros/mavros_plugin.h>
#include <mavconn/interface.h>
#include <mavros/mavlink_diag.h>
#include <mavros/utils.h>
#include <geographic_msgs/GeoPoseStamped.h>
#include <geometry_msgs/PoseStamped.h>

using namespace std;

namespace AdapterSpace
{
	class AdapterActionBase : protected AdapterSpaceBase
	{
		protected:
			
		public:

			AdapterActionBase(string droneName, string actionName);
	};
}

#endif // ADAPTER_SPACE_BASE_H
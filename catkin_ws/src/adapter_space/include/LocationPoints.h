#ifndef ADAPTER_LOCATION_POINTS_H
#define ADAPTER_LOCATION_POINTS_H

#include <ros/ros.h>
#include <string>
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

namespace AdapterSpaceSupport {

	class GeoPoint
	{
		protected:

			bool useAmsl;
			mavros::UAS mavros_uas;
			void init(double longitude, double latitude, double altitude, bool use_amsl);

		public:

			double longitude;
			double latitude;
			double altitude;
			double altitude_amsl;
			double altitude_noAmsl;
			bool isAbsolute;

			geographic_msgs::GeoPoseStamped GeoPoseStamped;

			GeoPoint();
			GeoPoint(double longitude, double latitude, double altitude, bool use_amsl);
			void Set(double longitude, double latitude, double altitude, bool use_amsl);
	};

	class LocalPoint
	{
		protected:

			void init(double x, double y, double z);

		public:

			double x;
			double y;
			double z;

			bool isAbsolute;

			geometry_msgs::PoseStamped PoseStamped;

			LocalPoint();
			LocalPoint(double x, double y, double z);
			void Set(double x, double y, double z);
	};
}
#endif // ADAPTER_LOCATION_POINTS_H
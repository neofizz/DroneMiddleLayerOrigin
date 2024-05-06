#include <LocationPoints.h>

namespace AdapterSpaceSupport
{
    GeoPoint::GeoPoint()
	{
	}

	GeoPoint::GeoPoint(double longitude, double latitude, double altitude, bool use_amsl)
	{
		init(longitude, latitude, altitude, use_amsl);
	}

	void GeoPoint::Set(double longitude, double latitude, double altitude, bool use_amsl)
	{
		init(longitude, latitude, altitude, use_amsl);
	}

	void GeoPoint::init(double longitude, double latitude, double altitude, bool use_amsl)
	{
		GeoPoseStamped.pose.position.longitude = longitude;
		GeoPoseStamped.pose.position.latitude = latitude;

		this->longitude = longitude;
		this->latitude = latitude;

		double amsl = mavros_uas.ellipsoid_to_geoid_height(this);

		altitude_noAmsl = altitude;
		altitude_amsl = altitude + amsl;

		if (use_amsl)
		{
			this->altitude = altitude_amsl;
			GeoPoseStamped.pose.position.altitude = altitude_amsl;
		}
		else
		{
			this->altitude = altitude_noAmsl;
			GeoPoseStamped.pose.position.altitude = altitude_noAmsl;
		}
	}

	LocalPoint::LocalPoint()
	{
	}

	LocalPoint::LocalPoint(double x, double y, double z)
	{
		init(x, y, z);
	}

	void LocalPoint::Set(double x, double y, double z)
	{
		init(x, y, z);
	}

	void LocalPoint::init(double x, double y, double z)
	{
		PoseStamped.pose.position.x = x;
		PoseStamped.pose.position.y = y;
		PoseStamped.pose.position.z = z;

		this->x = x;
		this->y = y;
		this->z = z;
	}
}
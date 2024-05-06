#include "AdapterSpaceBase.h"
//#include <string>
#include <adapter_space/MovingGoal.h>
#include "AdapterPositionBroker.h"
#include <adapter_space/MovingAction.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TwistStamped.h>
#include "LocationPoints.h"
#include "AdapterSetFlightModeAction.h"
#include "LocationValidator.h"
namespace AdapterSpaceSupport
{
    LocationValidator::LocationValidator(string droneName, AdapterBrokerSpace::AdapterPositionBroker* broker, AdapterSpace::AdapterSetFlightModeAction* modeAction)
        : AdapterSpaceBase(droneName, "Location Validator", "Support")
    {
        position_broker = broker;
    }

    void LocationValidator::handle_local_pos_callback(const adapter_space::MovingGoalConstPtr& goal)
    {
        LocalPoint localPoint {
				goal.get()->x,
				goal.get()->y,
				goal.get()->z
			};

        handle_local_pos_callback(&localPoint);
    }

    void LocationValidator::handle_local_pos_callback(LocalPoint* point)
    {
        LogInfo("Handle local pos callback begin.");
        LogInfo("Getting singular current position ...");

        start_local_position_broker(position_broker);

        targetLocal = new LocalPoint();

        targetLocal->Set(point->x, point->y, point->z);

        LogInfo("Target Local: %f, %f, %f", targetLocal->x, targetLocal->y, targetLocal->z);

        isPositionReached = false;

        localPositionSubscriber =
            nodeHandle.subscribe<geometry_msgs::PoseStamped>(SpecificOutboundLocalPositionTopicName, 1000, &LocationValidator::localPositionCallback, this);

        LogInfo("Handle local pos callback end.");
    }

    void LocationValidator::handle_global_pos_callback(const adapter_space::MovingGoalConstPtr& goal)
    {
        GeoPoint geoPoint {
				goal.get()->longitude,
				goal.get()->latitude,
				goal.get()->altitude,
				true
			};

        handle_global_pos_callback(&geoPoint);
    }

    void LocationValidator::handle_global_pos_callback(GeoPoint* point)
    {
        LogInfo("Handle global pos callback begin.");

        targetGlobal = point;

        start_global_position_broker(position_broker);

        isPositionReached = false;

        globalPositionSubscriber =
            nodeHandle.subscribe<geographic_msgs::GeoPoseStamped>(SpecificOutboundGlobalPositionTopicName, 1000, &LocationValidator::globalPositionCallback, this);

        LogInfo("Handle global pos callback end.");
    }

    void LocationValidator::globalPositionCallback(const geographic_msgs::GeoPoseStamped msg)
    {
        Feedback.longitude = msg.pose.position.longitude;
        Feedback.latitude = msg.pose.position.latitude;
        Feedback.altitude = msg.pose.position.altitude;

        if (!doGlobalPositionsMatch(msg, targetGlobal->GeoPoseStamped))
        {
            LogDebug("Publishing to setPointGlobalTopicPublisher: %f, %f, %f.",
                targetGlobal->GeoPoseStamped.pose.position.longitude,
                targetGlobal->GeoPoseStamped.pose.position.latitude,
                targetGlobal->GeoPoseStamped.pose.position.altitude);
        }
        else
        {
            stop_global_position_broker(position_broker);
            isPositionReached = true;
            globalPositionSubscriber.shutdown();

            Result.longitude = msg.pose.position.longitude;
            Result.latitude = msg.pose.position.latitude;
            Result.altitude = msg.pose.position.altitude;
            
            LogInfo("Location Validator / globalPositionCallback shut down.");
        }
    }

    void LocationValidator::localPositionCallback(const geometry_msgs::PoseStamped msg)
    {
        Feedback.x = msg.pose.position.x;
        Feedback.y = msg.pose.position.y;
        Feedback.z = msg.pose.position.z;

        if (!doLocalPositionsMatch(msg, targetLocal->PoseStamped))
        {
            LogDebug("Publishing to setPointGlobalTopicPublisher: %f, %f, %f.",
                targetLocal->PoseStamped.pose.position.x,
                targetLocal->PoseStamped.pose.position.y,
                targetLocal->PoseStamped.pose.position.z);
        }
        else
        {
            stop_local_position_broker(position_broker);
            isPositionReached = true;
            localPositionSubscriber.shutdown();

            Result.x = msg.pose.position.x;
            Result.y = msg.pose.position.y;
            Result.z = msg.pose.position.z;

            LogInfo("Location Validator / localPositionCallback shut down.");
        }
    }

    bool LocationValidator::doGlobalPositionsMatch(geographic_msgs::GeoPoseStamped point1, geographic_msgs::GeoPoseStamped point2, double tolerance)
    {
        if ((abs(point1.pose.position.longitude - point2.pose.position.longitude) <= tolerance) &&
            (abs(point1.pose.position.latitude - point2.pose.position.latitude) <= tolerance) &&
            (abs(point1.pose.position.altitude - point2.pose.position.altitude) <= tolerance))
        {
            LogInfo("Points matching! (%f, %f, %f vs. %f, %f, %f",
                point1.pose.position.longitude, point1.pose.position.latitude, point1.pose.position.altitude,
                point2.pose.position.longitude, point2.pose.position.latitude, point2.pose.position.altitude);

            return true;
        }

        LogDebug("Points not matching!",
            point1.pose.position.longitude, point1.pose.position.latitude, point1.pose.position.altitude,
            point2.pose.position.longitude, point2.pose.position.latitude, point2.pose.position.altitude);

        return false;
    }

    bool LocationValidator::doLocalPositionsMatch(geometry_msgs::PoseStamped point1, geometry_msgs::PoseStamped point2, double tolerance)
    {
        if ((abs(point1.pose.position.x - point2.pose.position.x) <= tolerance) &&
            (abs(point1.pose.position.y - point2.pose.position.y) <= tolerance) &&
            (abs(point1.pose.position.z - point2.pose.position.z) <= tolerance))
        {
            LogInfo("Points matching!",
                point1.pose.position.x, point1.pose.position.y, point1.pose.position.z,
                point2.pose.position.x, point2.pose.position.y, point2.pose.position.z);

            return true;
        }

        LogDebug("Points not matching! (%f, %f, %f vs. %f, %f, %f",
            point1.pose.position.x, point1.pose.position.y, point1.pose.position.z,
            point2.pose.position.x, point2.pose.position.y, point2.pose.position.z);

        return false;
    }

    void LocationValidator::start_local_position_broker(AdapterBrokerSpace::AdapterPositionBroker* broker)
    {
        LogInfo("Triggering START of LOCAL position broker streaming ...");
        broker->StartLocalStreaming();
    }

    void LocationValidator::stop_local_position_broker(AdapterBrokerSpace::AdapterPositionBroker* broker)
    {
        LogInfo("Triggering STOP of LOCAL position broker streaming ...");
        broker->StopLocalStreaming();
    }

    void LocationValidator::start_global_position_broker(AdapterBrokerSpace::AdapterPositionBroker* broker)
    {
        LogInfo("Triggering START of GLOBAL position broker streaming ...");
        broker->StartGlobalStreaming();
    }

    void LocationValidator::stop_global_position_broker(AdapterBrokerSpace::AdapterPositionBroker* broker)
    {
        LogInfo("Triggering STOP of GLOBAL position broker streaming ...");
        broker->StopGlobalStreaming();
    }
}
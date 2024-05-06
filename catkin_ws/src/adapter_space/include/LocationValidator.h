#ifndef LOCATION_VALIDATOR_H
#define LOCATION_VALIDATOR_H

#include "AdapterSpaceBase.h"
//#include <string>
#include <adapter_space/MovingGoal.h>
#include "AdapterPositionBroker.h"
#include <adapter_space/MovingAction.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TwistStamped.h>
#include "LocationPoints.h"
#include "AdapterSetFlightModeAction.h"

namespace AdapterSpaceSupport
{
    class LocationValidator : AdapterSpace::AdapterSpaceBase
    {
        protected:

        public:

            bool isPositionReached = false;
            ros::Subscriber globalPositionSubscriber;
            ros::Subscriber localPositionSubscriber;

            GeoPoint* goalGlobal;
            GeoPoint* targetGlobal;

            AdapterSpaceSupport::LocalPoint* goalLocal;
            AdapterSpaceSupport::LocalPoint* targetLocal;
            
            bool isInitialized = false;
            bool doCmdVelPublish;

            ros::Rate rate = ros::Rate(20.0);

            adapter_space::MovingFeedback Feedback;
            adapter_space::MovingResult Result;
            bool wasPreempted = false;
            AdapterBrokerSpace::AdapterPositionBroker* position_broker;
            AdapterSpace::AdapterSetFlightModeAction* mode_action;

            LocationValidator(string droneName, AdapterBrokerSpace::AdapterPositionBroker* broker, AdapterSpace::AdapterSetFlightModeAction* modeAction = nullptr);

            void handle_local_pos_callback(const adapter_space::MovingGoalConstPtr& goal);

            void handle_global_pos_callback(const adapter_space::MovingGoalConstPtr& goal);

            void handle_global_pos_callback(GeoPoint* point);

            void globalPositionCallback(const geographic_msgs::GeoPoseStamped msg);

            void handle_local_pos_callback(LocalPoint* point);

            void localPositionCallback(const geometry_msgs::PoseStamped msg);

            bool doGlobalPositionsMatch(geographic_msgs::GeoPoseStamped point1, geographic_msgs::GeoPoseStamped point2, double tolerance = 0.1);

            bool doLocalPositionsMatch(geometry_msgs::PoseStamped point1, geometry_msgs::PoseStamped point2, double tolerance = 0.1);

            void start_local_position_broker(AdapterBrokerSpace::AdapterPositionBroker* broker);

            void stop_local_position_broker(AdapterBrokerSpace::AdapterPositionBroker* broker);

            void start_global_position_broker(AdapterBrokerSpace::AdapterPositionBroker* broker);

            void stop_global_position_broker(AdapterBrokerSpace::AdapterPositionBroker* broker);
    };
}

#endif // LOCATION_VALIDATOR_H
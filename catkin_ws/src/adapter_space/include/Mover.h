#ifndef MOVER_H
#define MOVER_H

#include "AdapterSpaceBase.h"
#include <ros/ros.h>
#include <AdapterSetFlightModeAction.h>
#include <LocationValidator.h>

using namespace std;

namespace AdapterSpaceSupport
{
    class Mover : AdapterSpace::AdapterSpaceBase
    {
        private:

            string TOPIC_NAME_SETPOINT_GLOBAL;
            string TOPIC_NAME_SETPOINT_LOCAL;
            string TOPIC_NAME_SETPOINT_CMDVEL;

            ros::Publisher setPointGlobalTopicPublisher;
            ros::Publisher setPointLocalTopicPublisher;
            ros::Publisher setPointCmdVelTopicPublisher;

            AdapterSpace::AdapterSetFlightModeAction* mode_action;
            LocationValidator* location_validator;

            bool isHeading;
            bool wasCanceled;

            geometry_msgs::TwistStamped heading_direction;

        protected:

        public:

            Mover(string droneName, AdapterSpace::AdapterSetFlightModeAction* modeAction, LocationValidator* locval);

            void FlyToTargetLocal(LocalPoint* target);

            void FlyToTargetGlobal(GeoPoint* target);

            void HeadTowards(LocalPoint* direction);

            void HeadTowards();

            void StopHeading();

            void UpdateHeading(LocalPoint* direction);

            // void StartDynamicTowards();

            // void StopDynamicTowards();

            void CancelMovement();
    };
}

#endif // MOVER_H
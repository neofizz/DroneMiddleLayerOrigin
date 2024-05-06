#include <Mover.h>

namespace AdapterSpaceSupport
{
    Mover::Mover(string droneName, AdapterSpace::AdapterSetFlightModeAction* modeAction, LocationValidator* locval)
        : AdapterSpace::AdapterSpaceBase(droneName, "Mover", "Support")
    {
        TOPIC_NAME_SETPOINT_GLOBAL = drone_name + "/mavros/setpoint_position/global";
        TOPIC_NAME_SETPOINT_LOCAL = drone_name + "/mavros/setpoint_position/local";
        TOPIC_NAME_SETPOINT_CMDVEL = drone_name + "/mavros/setpoint_velocity/cmd_vel";

        mode_action = modeAction;
        location_validator = locval;

        setPointGlobalTopicPublisher = nodeHandle.advertise<geographic_msgs::GeoPoseStamped>(TOPIC_NAME_SETPOINT_GLOBAL, 1000);
        setPointLocalTopicPublisher = nodeHandle.advertise<geometry_msgs::PoseStamped>(TOPIC_NAME_SETPOINT_LOCAL, 1000);
        setPointCmdVelTopicPublisher = nodeHandle.advertise<geometry_msgs::TwistStamped>(TOPIC_NAME_SETPOINT_CMDVEL, 1000);

        wasCanceled = false;
    }

    void Mover::FlyToTargetLocal(LocalPoint* target)
    {
        LogInfo("FlyToTargetLocal starting ...");

        LogInfo("FlyToTargetLocal %f %f %f.",
                target->PoseStamped.pose.position.x, target->PoseStamped.pose.position.y, target->PoseStamped.pose.position.z);

        ros::Rate loop_rate(10);

        mode_action->SetOffboardMode();
        location_validator->handle_local_pos_callback(target);
        
        while (!location_validator->isPositionReached)
        {
            if (wasCanceled)
                break;

            setPointLocalTopicPublisher.publish(target->PoseStamped);

            LogDebug("Current Location: %f %f %f.",
                location_validator->Feedback.x, location_validator->Feedback.y, location_validator->Feedback.z);

            ros::spinOnce();
			loop_rate.sleep();
        }

        location_validator->isPositionReached = false;
        wasCanceled = false;

        LogInfo("FlyToTargetLocal finsihed.");
    }

    void Mover::FlyToTargetGlobal(GeoPoint* target)
    {
        LogInfo("FlyToTargetGlobal starting ...");

        LogInfo("FlyToTargetGlobal %f %f %f.",
                target->GeoPoseStamped.pose.position.longitude, target->GeoPoseStamped.pose.position.latitude, target->GeoPoseStamped.pose.position.altitude);

        ros::Rate loop_rate(10);

        location_validator->handle_global_pos_callback(target);

        while (!location_validator->isPositionReached)
        {
            if (wasCanceled)
                break;

            setPointGlobalTopicPublisher.publish(target->GeoPoseStamped);

            LogDebug("Current Location: %f %f %f.",
                location_validator->Feedback.longitude, location_validator->Feedback.latitude, location_validator->Feedback.altitude);

            ros::spinOnce();
			loop_rate.sleep();
        }

        location_validator->isPositionReached = false;
        wasCanceled = false;

        LogInfo("FlyToTargetGlobal finsihed.");
    }

    void Mover::UpdateHeading(LocalPoint* direction)
    {
		heading_direction.twist.linear.x = direction->x;
		heading_direction.twist.linear.y = direction->y;
		heading_direction.twist.linear.z = direction->z;
    }

    void Mover::HeadTowards(LocalPoint* direction)
    {
		heading_direction.twist.linear.x = direction->x;
		heading_direction.twist.linear.y = direction->y;
		heading_direction.twist.linear.z = direction->z;

        HeadTowards();
    }

    void Mover::HeadTowards()
    {
        LogInfo("Starting Heading towards ...");

        //geometry_msgs::TwistStamped t;
		double x = heading_direction.twist.linear.x;
		double y = heading_direction.twist.linear.y;
		double z = heading_direction.twist.linear.z;

        if (x == 0 && y == 0 && z == 0)
		{
            LogInfo("Zero-Movement recognized. Halting.");
			return;
		}

        ros::Rate loop_rate(10);

        mode_action->SetOffboardMode();
        isHeading = true;
        
        while (isHeading)
		{
            LogInfo("Publishing to setPointCmdVelTopicPublisher: %f, %f, %f.", logger.c_str(),
                heading_direction.twist.linear.x, heading_direction.twist.linear.y, heading_direction.twist.linear.z);

            LogDebug("Current Location: %f %f %f.",
                location_validator->Feedback.x, location_validator->Feedback.y, location_validator->Feedback.z);

			setPointCmdVelTopicPublisher.publish(heading_direction);
			ros::spinOnce();
			loop_rate.sleep();
		}

        mode_action->SetHoldMode();

        LogInfo("Heading towards ended.");
    }

    void Mover::StopHeading()
    {
        isHeading = false;
    }

    void Mover::CancelMovement()
    {
        wasCanceled = true;
    }
}
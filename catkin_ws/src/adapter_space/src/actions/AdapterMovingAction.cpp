#include "AdapterMovingAction.h"
#include <adapter_space/MovingAction.h>
#include <adapter_space/MovingGoal.h>
#include <cmath>
#include <thread>

namespace AdapterSpace
{
	AdapterMovingAction::AdapterMovingAction(string droneName, string actionName, AdapterBrokerSpace::AdapterPositionBroker* broker,
		AdapterSetFlightModeAction* modeAction) : AdapterActionBase(droneName, actionName)
	{
		TOPIC_NAME_SETPOINT_GLOBAL = drone_name + "/mavros/setpoint_position/global";
		TOPIC_NAME_SETPOINT_LOCAL = drone_name + "/mavros/setpoint_position/local";
		TOPIC_NAME_SETPOINT_CMDVEL = drone_name + "/mavros/setpoint_velocity/cmd_vel";

		action_server = new actionlib::SimpleActionServer<adapter_space::MovingAction>(nodeHandle, qualified_name, boost::bind(&AdapterMovingAction::executeAdapterMovingActionCallback, this, _1), false);

		position_broker = broker;
		mode_action = modeAction;
		location_validator = new AdapterSpaceSupport::LocationValidator(drone_name, broker);
		mover = new AdapterSpaceSupport::Mover(drone_name, mode_action, location_validator);

		cancel_subscriber = nodeHandle.subscribe<actionlib_msgs::GoalID>(cancel_topic, 1000, &AdapterMovingAction::CancelGoal, this);

		LogInfo("Initialized. (cancel: %s)", cancel_topic.c_str());
	}

	void AdapterMovingAction::executeAdapterMovingActionCallback(const adapter_space::MovingGoalConstPtr& goal)
	{
		LogInfo("Callback executing ...");

		if (goal.get()->mode == MODE_MOVETO_GLOBAL || goal.get()->mode == MODE_MOVETO_GLOBAL_INT)	// MODE_MOVETO_GLOBAL
		{
			LogInfo("Moving Goal (global): %f, %f, %f", goal.get()->longitude, goal.get()->latitude, goal.get()->altitude);

			AdapterSpaceSupport::GeoPoint* target = ConvertGoalToGlobalTarget(goal);

			LogInfo("Target Point (global): %f, %f, %f", target->longitude, target->latitude, target->altitude);

			mover->FlyToTargetGlobal(target);
		}
		else if (goal.get()->mode == MODE_MOVETO_LOCAL || goal.get()->mode == MODE_MOVETO_LOCAL_INT) // MODE_MOVETO_LOCAL
		{
			LogInfo("Moving Goal (local): %f, %f, %f", goal.get()->x, goal.get()->y, goal.get()->z);

			AdapterSpaceSupport::LocalPoint* target = ConvertGoalToLocalTarget(goal);

			LogInfo("Target Point (local): %f, %f, %f", target->x, target->y, target->z);

			mover->FlyToTargetLocal(target);
		}
		else if (goal.get()->mode == MODE_HEADTO_ON || goal.get()->mode == MODE_HEADTO_ON_INT) // MODE_HEADTO_ON
		{	
			LogInfo("Starting Heading ...");

			AdapterSpaceSupport::LocalPoint* target = ConvertGoalToHeadingTarget(goal);

			std::thread t (
				[](AdapterSpaceSupport::Mover* m, AdapterSpaceSupport::LocalPoint* t)
				{
					m->HeadTowards(t);
				}, mover, target);

			t.detach();

			LogInfo("Heading started.");
		}
		else if (goal.get()->mode == MODE_HEADTO_OFF || goal.get()->mode == MODE_HEADTO_OFF_INT) // MODE_HEADTO_OFF
		{	
			LogInfo("Stopping Heading ...");
			mover->StopHeading();
			LogInfo("Heading stopped.");
		}
		else
		{
			LogInfo("ode: UNKNOWN.");
		}

		action_server->setSucceeded();
		LogInfo("Finisihed executing Callback.");
	}

	AdapterSpaceSupport::GeoPoint* AdapterMovingAction::ConvertGoalToGlobalTarget(const adapter_space::MovingGoalConstPtr& goal)
	{
		AdapterSpaceSupport::GeoPoint* targetGlobal = new AdapterSpaceSupport::GeoPoint();

		if (goal->isAbsolute)
		{
			targetGlobal->Set(goal.get()->longitude, goal.get()->latitude, goal.get()->altitude, true);
			LogInfo("TargetGlobal set: long: %f, lat: %f, alt: %f", targetGlobal->longitude, targetGlobal->latitude, targetGlobal->altitude);
		}
		else
		{
			adapter_space::BPositionResultConstPtr posResult = position_broker->GetLocalPosition();

			double targetLongitude = posResult->geoPose.position.longitude + goal.get()->longitude;
			double targetLatitude = posResult->geoPose.position.latitude + goal.get()->latitude;
			double targetAltitude = posResult->geoPose.position.altitude + goal.get()->altitude;

			targetGlobal->Set(targetLongitude, targetLatitude, targetAltitude, true);
		}

		targetGlobal->isAbsolute = goal->isAbsolute;

		LogInfo("Targeting global position: %f, %f, %f", targetGlobal->longitude, targetGlobal->latitude, targetGlobal->altitude);

		return targetGlobal;
	}

	AdapterSpaceSupport::LocalPoint* AdapterMovingAction::ConvertGoalToHeadingTarget(const adapter_space::MovingGoalConstPtr& goal)
	{
		AdapterSpaceSupport::LocalPoint* targetLocal = new AdapterSpaceSupport::LocalPoint();

		double x,y,z;

		if (isnan(goal.get()->x))
			x = 0;
		else
			x = goal.get()->x;

		if (isnan(goal.get()->y))
			y = 0;
		else
			y = goal.get()->y;

		if (isnan(goal.get()->z))
			z = 0;
		else
			z = goal.get()->z;

		targetLocal->Set(x, y, z);

		targetLocal->isAbsolute = goal->isAbsolute;

		LogInfo("Heading local position: %f, %f, %f", targetLocal->x, targetLocal->y, targetLocal->z);

		return targetLocal;
	}

	AdapterSpaceSupport::LocalPoint* AdapterMovingAction::ConvertGoalToLocalTarget(const adapter_space::MovingGoalConstPtr& goal)
	{
		AdapterSpaceSupport::LocalPoint* targetLocal = new AdapterSpaceSupport::LocalPoint();
		adapter_space::BPositionResultConstPtr posResult = position_broker->GetLocalPosition();

		double x,y,z;

		if (goal->isAbsolute)
		{
			if (isnan(goal.get()->x))
				x = posResult->twistPose.position.x;
			else
				x = goal.get()->x;

			if (isnan(goal.get()->y))
				y = posResult->twistPose.position.y;
			else
				y = goal.get()->y;

			if (isnan(goal.get()->z))
				z = posResult->twistPose.position.z;
			else
				z = goal.get()->z;

			targetLocal->Set(x, y, z);
		}
		else
		{
			if (isnan(goal.get()->x))
				x = 0;
			else
				x = goal.get()->x;

			if (isnan(goal.get()->y))
				y = 0;
			else
				y = goal.get()->y;

			if (isnan(goal.get()->z))
				z = 0;
			else
				z = goal.get()->z;

			double targetX = posResult->twistPose.position.x + x;
			double targetY = posResult->twistPose.position.y + y;
			double targetZ = posResult->twistPose.position.z + z;

			targetLocal->Set(targetX, targetY, targetZ);
		}

		targetLocal->isAbsolute = goal->isAbsolute;

		LogInfo("Targeting local position: %f, %f, %f", targetLocal->x, targetLocal->y, targetLocal->z);

		return targetLocal;
	}

	void AdapterMovingAction::CancelGoal(const actionlib_msgs::GoalID goalId)
	{
		LogInfo("Canceling all goals. (goalID: %s) ...", goalId.id);

		mover->CancelMovement();
		action_server->setPreempted(location_validator->Result, "Goal canceled.");

		LogInfo("Goal canceled.");
	}

	void AdapterMovingAction::Start()
	{
		action_server->start();
		LogInfo("Started.");
	}
}
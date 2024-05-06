#define _USE_MATH_DEFINES
#include <math.h>
#include "AdapterOrbitAction.h"
#include <adapter_space/OrbitAction.h>
#include <adapter_space/OrbitGoal.h>
#include <cmath>
#include <thread>

namespace AdapterSpace
{
	AdapterOrbitAction::AdapterOrbitAction(string droneName, string actionName, AdapterBrokerSpace::AdapterPositionBroker* broker,
		AdapterSetFlightModeAction* modeAction) : AdapterActionBase(droneName, actionName)
	{
		action_server = new actionlib::SimpleActionServer<adapter_space::OrbitAction>(nodeHandle, qualified_name, boost::bind(&AdapterOrbitAction::executeAdapterOrbitActionCallback, this, _1), false);

		position_broker = broker;
		mode_action = modeAction;
		location_validator = new AdapterSpaceSupport::LocationValidator(drone_name, broker);
		mover = new AdapterSpaceSupport::Mover(drone_name, mode_action, location_validator);

		cancel_subscriber = nodeHandle.subscribe<actionlib_msgs::GoalID>(cancel_topic, 1000, &AdapterOrbitAction::CancelGoal, this);

		LogInfo("Initialized. (cancel: %s)", cancel_topic.c_str());
	}

	void AdapterOrbitAction::executeAdapterOrbitActionCallback(const adapter_space::OrbitGoalConstPtr& goal)
	{
		LogInfo("Callback executing ...");

		double radius = goal->radius;

		if (radius != 0)
		{
			adapter_space::BPositionResultConstPtr posResult = position_broker->GetLocalPosition();

			double centerx = posResult.get()->twistPose.position.x;
			double centery = posResult.get()->twistPose.position.y;
			double height = posResult.get()->twistPose.position.z;

			performOrbit = true;

			std::thread t(&AdapterOrbitAction::Orbit, this, centerx, centery, radius, height);
			t.detach();

			action_server->setSucceeded();
		}
		else
		{
			performOrbit = false;

			action_server->setSucceeded();
		}
		
		LogInfo("Finisihed executing Callback.");
	}

	void AdapterOrbitAction::Orbit(double centerx, double centery, double radius, double z)
	{
		int degrees = 0;
		double x;
		double y;

		while(performOrbit)
		{
			getPoint(&x, &y, centerx, centery, radius, degrees);

			AdapterSpaceSupport::LocalPoint* targetLocal = new AdapterSpaceSupport::LocalPoint();

			targetLocal->Set(x, y, z);

			mover->FlyToTargetLocal(targetLocal);

			degrees += 50;

			if (degrees >= 360)
				degrees = 0;
		}
	}

	void AdapterOrbitAction::getPoint(double* x, double* y, double centerx, double centery, double radius, double alpha)
	{
		*x = centerx + radius * cos(to_radians(alpha));
		*y = centery + radius * sin(to_radians(alpha));
	}

	double AdapterOrbitAction::to_radians(double degrees)
	{
		return degrees * M_PI / 180;
	}

	void AdapterOrbitAction::CancelGoal(const actionlib_msgs::GoalID goalId)
	{
		LogInfo("Canceling all goals. (goalID: %s) ...", goalId.id);

		mover->CancelMovement();
		action_server->setPreempted(result, "Goal canceled.");

		LogInfo("Goal canceled.");
	}

	void AdapterOrbitAction::Start()
	{
		action_server->start();
		LogInfo("Started.");
	}
}
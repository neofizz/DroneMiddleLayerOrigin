#include "AdapterActionBase.h"
#include "AdapterPositionBroker.h"
#include "AdapterSetFlightModeAction.h"
#include <actionlib/server/simple_action_server.h>
#include <actionlib/client/simple_action_client.h>
#include <adapter_space/OrbitAction.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TwistStamped.h>
#include <geographic_msgs/GeoPoseStamped.h>
#include <LocationValidator.h>
#include "Mover.h"
#include <math.h>

namespace AdapterSpace
{
    class AdapterOrbitAction : protected AdapterActionBase
	{
        protected:

			actionlib::SimpleActionServer<adapter_space::OrbitAction>* action_server;
            AdapterSpaceSupport::Mover* mover;
			AdapterBrokerSpace::AdapterPositionBroker* position_broker;
			AdapterSetFlightModeAction* mode_action;
			AdapterSpaceSupport::LocationValidator* location_validator;

            adapter_space::OrbitFeedback feedback;
			adapter_space::OrbitResult result;

            void executeAdapterOrbitActionCallback(const adapter_space::OrbitGoalConstPtr& goal);

			bool performOrbit;
			void Orbit(double centerx, double centery, double radius, double z);
			AdapterSpaceSupport::LocalPoint* ConvertGoalToLocalTarget(const adapter_space::OrbitGoalConstPtr& goal);
			void getPoint(double* x, double* y, double centerx, double centery, double radius, double alpha);
			double to_radians(double degrees);

			struct Test{
				void func(int x);
			};

		public:

			AdapterOrbitAction(string drone_name, string name,
				AdapterBrokerSpace::AdapterPositionBroker* broker, AdapterSetFlightModeAction* modeAction);

			void Start();
			void CancelCurrentGoal();
			void CancelGoal(const actionlib_msgs::GoalID msg);
	};
}
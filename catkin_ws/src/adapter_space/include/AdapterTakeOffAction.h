#include <actionlib/client/simple_action_client.h>
#include "AdapterActionBase.h"
#include "AdapterPositionBroker.h"
#include <adapter_space/BPositionAction.h>
#include <adapter_space/TakeOffAction.h>
#include <mavros_msgs/CommandTOL.h>
#include "LocationPoints.h"
#include "LocationValidator.h"
#include "Mover.h"
#include "AdapterSetFlightModeAction.h"

using namespace AdapterSpaceSupport;

namespace AdapterSpace
{
	class AdapterTakeOffAction : protected AdapterActionBase
	{
		protected:

			const string MODE_JUST_TAKEOFF = "TAKEOFF";
			const string MODE_TAKEOFF_TO_HEIGHT = "TAKEOFF_TO_HEIGHT";
			const string MODE_TAKEOFF_AND_MOVE = "TAKEOFF_AND_MOVE";

			actionlib::SimpleActionServer<adapter_space::TakeOffAction>* action_server;
			AdapterSpaceSupport::LocationValidator* location_validator;
			AdapterSpaceSupport::Mover* mover;
			adapter_space::TakeOffFeedback feedback;
			adapter_space::TakeOffResult result;

			AdapterBrokerSpace::AdapterPositionBroker* position_broker;

			ros::ServiceClient service_client;
			string service_name;
			string loc_mode;
			AdapterSetFlightModeAction* mode_action;

		public:

			AdapterTakeOffAction(string drone_name, string name, string localization_mode, AdapterBrokerSpace::AdapterPositionBroker* broker, AdapterSetFlightModeAction* modeAction);

			void executeAdapterTakeOffActionCallback_local(const adapter_space::TakeOffGoalConstPtr& goal);
			void executeAdapterTakeOffActionCallback_global(const adapter_space::TakeOffGoalConstPtr& goal);
			void CancelGoal(const actionlib_msgs::GoalID msg);
			void Start();
	};
}
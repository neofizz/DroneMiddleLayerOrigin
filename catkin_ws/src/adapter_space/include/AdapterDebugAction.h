#include "AdapterPositionBroker.h"
#include "AdapterSetFlightModeAction.h"
#include <adapter_space/DebugAction.h>
#include "AdapterActionBase.h"

namespace AdapterSpace
{
	class AdapterDebugAction : protected AdapterActionBase
	{
		protected:

			actionlib::SimpleActionServer<adapter_space::DebugAction>* action_server;
			actionlib::SimpleActionClient<adapter_space::DebugAction>* action_client;

			adapter_space::DebugActionFeedback feedback;
			adapter_space::DebugActionResult result;

			AdapterBrokerSpace::AdapterPositionBroker* position_broker;
			AdapterSetFlightModeAction* mode_action;

		public:

			AdapterDebugAction(string drone_name, string name,
				AdapterBrokerSpace::AdapterPositionBroker* broker, AdapterSetFlightModeAction* modeAction);

			void executeAdapterDebugActionCallback(const adapter_space::DebugGoalConstPtr& goal);
			adapter_space::DebugResultConstPtr SendGoal(adapter_space::DebugGoal goal);
			void CancelGoal(const actionlib_msgs::GoalID msg);

			void SendStreamOn();
			void SendStreamOff();

			void Start();
	};
}
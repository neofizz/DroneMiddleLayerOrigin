#include "AdapterActionBase.h"
#include <adapter_space/ArmingAction.h>
#include "AdapterStatusBroker.h"
#include <mavros_msgs/CommandBool.h>

using namespace std;

namespace AdapterSpace
{
	class AdapterArmingAction : protected AdapterActionBase
	{
		protected:

			actionlib::SimpleActionServer<adapter_space::ArmingAction>* action_server;

			adapter_space::ArmingActionFeedback feedback;
			adapter_space::ArmingActionResult result;
			mavros_msgs::CommandBool arm_cmd;

			ros::ServiceClient service_client;
			string service_name;

			AdapterBrokerSpace::AdapterStatusBroker* status_broker;

		public:

			AdapterArmingAction(string droneName, string actionName, AdapterBrokerSpace::AdapterStatusBroker* broker);

			void executeAdapterArmingActionCallback(const adapter_space::ArmingGoalConstPtr& goal);

			void CancelGoal(const actionlib_msgs::GoalID msg);

			void Start();
	};
}
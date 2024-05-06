#include <actionlib/client/simple_action_client.h>
#include "AdapterActionBase.h"
#include "AdapterPositionBroker.h"
#include "AdapterStatusBroker.h"
#include <adapter_space/LandAction.h>
#include <mavros_msgs/CommandTOL.h>

namespace AdapterSpace
{
	class AdapterLandAction : protected AdapterActionBase
	{
	protected:

		actionlib::SimpleActionServer<adapter_space::LandAction>* action_server;

		adapter_space::LandFeedback feedback;
		adapter_space::LandActionResult result;

		ros::ServiceClient service_client;
		string service_name;

		mavros_msgs::CommandTOL land_request_msg;

		AdapterBrokerSpace::AdapterStatusBroker* status_broker;

	public:

		AdapterLandAction(string drone_name, string name, AdapterBrokerSpace::AdapterStatusBroker* broker);

		void executeAdapterLandActionCallback(const adapter_space::LandGoalConstPtr& goal);
		void CancelGoal(const actionlib_msgs::GoalID msg);
		void Start();
	};
}
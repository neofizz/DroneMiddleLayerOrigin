#include "AdapterActionBase.h"
#include <adapter_space/Dummy1Action.h>

using namespace std;

namespace AdapterSpace
{
	class AdapterDummy1Action : protected AdapterActionBase
	{
		protected:

			actionlib::SimpleActionServer<adapter_space::Dummy1Action>* action_server;

			adapter_space::Dummy1ActionFeedback feedback;
			adapter_space::Dummy1ActionResult result;

			ros::ServiceClient service_client;
			string service_name;

		public:

			AdapterDummy1Action(string droneName, string actionName);

			void executeAdapterDummy1ActionCallback(const adapter_space::Dummy1GoalConstPtr& goal);

			void CancelGoal(const actionlib_msgs::GoalID msg);

			void Start();
	};
}
#include "AdapterActionBase.h"
#include <adapter_space/Dummy2Action.h>

using namespace std;

namespace AdapterSpace
{
	class AdapterDummy2Action : protected AdapterActionBase
	{
		protected:

			actionlib::SimpleActionServer<adapter_space::Dummy2Action>* action_server;

			adapter_space::Dummy2ActionFeedback feedback;
			adapter_space::Dummy2ActionResult result;

		public:

			AdapterDummy2Action(string droneName, string actionName);

			void executeAdapterDummy2ActionCallback(const adapter_space::Dummy2GoalConstPtr& goal);

			void CancelGoal(const actionlib_msgs::GoalID msg);

			void Start();
	};
}
#include "AdapterActionBase.h"
#include <adapter_space/Dummy3Action.h>

using namespace std;

namespace AdapterSpace
{
	class AdapterDummy3Action : protected AdapterActionBase
	{
		protected:

			actionlib::SimpleActionServer<adapter_space::Dummy3Action>* action_server;

			adapter_space::Dummy3ActionFeedback feedback;
			adapter_space::Dummy3ActionResult result;

		public:

			AdapterDummy3Action(string droneName, string actionName);

			void executeAdapterDummy3ActionCallback(const adapter_space::Dummy3GoalConstPtr& goal);

			void CancelGoal(const actionlib_msgs::GoalID msg);

			void Start();
	};
}
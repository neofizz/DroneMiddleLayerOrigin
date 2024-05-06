#include <adapter_space/TakeOffGoal.h>
#include <adapter_space/TakeOffAction.h>
#include "UniformActionBase.h"

using namespace std;

namespace UniformSpace
{
	class UniformTakeOffAction : public UniformActionBase
	{
		protected:

			actionlib::SimpleActionClient<adapter_space::TakeOffAction>* action_client;

		public:

			UniformTakeOffAction(string droneName, string actionName);

			void Trigger(double height);
	};
}
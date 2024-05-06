#include <adapter_space/DebugGoal.h>
#include <adapter_space/DebugAction.h>
#include "UniformActionBase.h"

using namespace std;

namespace UniformSpace
{
	class UniformDebugAction : public UniformActionBase
	{
		protected:

			actionlib::SimpleActionClient<adapter_space::DebugAction>* action_client;

		public:

			UniformDebugAction(string droneName, string actionName);

			void Trigger(string debug);
	};
}
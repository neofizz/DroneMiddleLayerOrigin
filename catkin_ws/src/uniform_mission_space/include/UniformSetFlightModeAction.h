#include <adapter_space/SetFlightModeGoal.h>
#include <adapter_space/SetFlightModeAction.h>
#include "UniformActionBase.h"

using namespace std;

namespace UniformSpace
{
	class UniformSetFlightModeAction : public UniformActionBase
	{
		protected:

			actionlib::SimpleActionClient<adapter_space::SetFlightModeAction>* action_client;

		public:

			UniformSetFlightModeAction(string droneName, string actionName);
			void Trigger(string mode);
	};
}
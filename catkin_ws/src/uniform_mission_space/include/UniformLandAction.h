#include <adapter_space/LandGoal.h>
#include <adapter_space/LandAction.h>
#include "UniformActionBase.h"

using namespace std;

namespace UniformSpace
{
	class UniformLandAction : public UniformActionBase
	{
		protected:

			actionlib::SimpleActionClient<adapter_space::LandAction>* action_client;

		public:

			UniformLandAction(string droneName, string actionName);
			void Trigger();
	};
}
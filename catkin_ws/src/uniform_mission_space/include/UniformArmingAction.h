#include <adapter_space/ArmingGoal.h>
#include <adapter_space/ArmingAction.h>
#include "UniformActionBase.h"

using namespace std;

namespace UniformSpace
{
	class UniformArmingAction : public UniformActionBase
	{
		protected:

			actionlib::SimpleActionClient<adapter_space::ArmingAction>* action_client;

		public:

			UniformArmingAction(string droneName, string actionName);

			void Trigger(bool shouldArm);
			
			int warp_me();
	};
}
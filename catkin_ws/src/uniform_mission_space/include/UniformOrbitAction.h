#include <adapter_space/OrbitGoal.h>
#include <adapter_space/OrbitAction.h>
#include "UniformActionBase.h"

using namespace std;

namespace UniformSpace
{
	class UniformOrbitAction : public UniformActionBase
	{
		protected:

			actionlib::SimpleActionClient<adapter_space::OrbitAction>* action_client;

		public:

			UniformOrbitAction(string droneName, string name);

			void StartOrbit(double radius);
			void StopOrbit();

			void send_and_wait_for_result(adapter_space::OrbitGoal goal);
	};
}
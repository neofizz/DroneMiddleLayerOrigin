#include <adapter_space/Dummy2Goal.h>
#include <adapter_space/Dummy2Action.h>
#include "UniformActionBase.h"

using namespace std;

namespace UniformSpace
{
	class UniformDummy2Action : public UniformActionBase
	{
		protected:

			actionlib::SimpleActionClient<adapter_space::Dummy2Action>* action_client;

		public:

			UniformDummy2Action(string droneName, string actionName);

			void Trigger(int seconds);
	};
}
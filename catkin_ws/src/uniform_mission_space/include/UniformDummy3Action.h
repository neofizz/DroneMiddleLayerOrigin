#include <adapter_space/Dummy3Goal.h>
#include <adapter_space/Dummy3Action.h>
#include "UniformActionBase.h"

using namespace std;

namespace UniformSpace
{
	class UniformDummy3Action : public UniformActionBase
	{
		protected:

			actionlib::SimpleActionClient<adapter_space::Dummy3Action>* action_client;

		public:

			UniformDummy3Action(string droneName, string actionName);

			void Trigger(int seconds);
	};
}
#include <adapter_space/Dummy1Goal.h>
#include <adapter_space/Dummy1Action.h>
#include "UniformActionBase.h"

using namespace std;

namespace UniformSpace
{
	class UniformDummy1Action : public UniformActionBase
	{
		protected:

			actionlib::SimpleActionClient<adapter_space::Dummy1Action>* action_client;

		public:

			UniformDummy1Action(string droneName, string actionName);

			void Trigger(int seconds);
	};
}
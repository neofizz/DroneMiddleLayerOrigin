#include <adapter_space/MovingGoal.h>
#include <adapter_space/MovingAction.h>
#include "UniformActionBase.h"

using namespace std;

namespace UniformSpace
{
	class UniformMovingAction : public UniformActionBase
	{
		protected:

			actionlib::SimpleActionClient<adapter_space::MovingAction>* action_client;

		public:

			UniformMovingAction(string droneName, string name);

			void MoveToGlobalAbsolut(double longitude, double latittude, double altitude);
			void MoveToGlobalRelative(double longitude, double latittude, double altitude);
			void MoveToLocalAbsolut(double x, double y, double z);
			void MoveToLocalRelative(double x, double y, double z);
			void HeadTowardsOn(double x, double y, double z);
			void HeadTowardsOff();

			void send_and_wait_for_result(adapter_space::MovingGoal goal);
	};
}
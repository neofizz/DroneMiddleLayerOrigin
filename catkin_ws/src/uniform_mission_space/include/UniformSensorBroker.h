#include <adapter_space/BSensorAction.h>
#include "UniformBrokerBase.h"

using namespace adapter_space;

namespace UniformSpace
{
    string const static SENSOR1_TYPE = "SENSOR1";

    class UniformSensorBroker : public UniformBrokerBase
    {
        protected:

			actionlib::SimpleActionClient<BSensorAction>* action_client;

        public:

			UniformSensorBroker(string droneName, string actionName);

			BSensorResultConstPtr Trigger(string type);

            double GetSensor1Reading();
    };
}
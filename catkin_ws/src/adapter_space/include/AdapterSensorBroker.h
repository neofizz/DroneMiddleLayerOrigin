#ifndef ADAPTER_SENSOR_BROKER_H_
#define ADAPTER_SENSOR_BROKER_H_

#include "AdapterBrokerBase.h"
#include <adapter_space/BSensorAction.h>
#include <actionlib/server/simple_action_server.h>

namespace AdapterBrokerSpace
{
    string const static SENSOR1_TYPE = "SENSOR1";

    class AdapterSensorBroker : protected AdapterBrokerBase
	{
        protected:

		actionlib::SimpleActionServer<adapter_space::BSensorAction>* action_server;

		adapter_space::BSensorFeedback feedback;
		adapter_space::BSensorResult result;

	public:

		AdapterSensorBroker(string drone_name, string name);

		void executeSensorActionCallback(const adapter_space::BSensorGoalConstPtr& goal);
		void CancelGoal(const actionlib_msgs::GoalID msg);
		void Start();

        adapter_space::BSensorResultConstPtr GetSensor1Value();
    };
}

#endif // ADAPTER_SENSOR_BROKER_H_
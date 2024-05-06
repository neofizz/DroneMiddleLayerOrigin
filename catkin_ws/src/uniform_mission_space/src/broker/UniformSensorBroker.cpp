#include "UniformSensorBroker.h"

namespace UniformSpace
{
    UniformSensorBroker::UniformSensorBroker(string droneName, string brokerName) : UniformBrokerBase(droneName, brokerName)
	{
		action_client = new actionlib::SimpleActionClient<BSensorAction>(qualified_broker_name, true);

		LogInfo("Initialized.");
	}

	BSensorResultConstPtr UniformSensorBroker::Trigger(string type)
	{
		BSensorGoal goal;
		BSensorResultConstPtr result;

		goal.type = "SENSOR";

		LogInfo("Triggering. type: %s", type.c_str());

		LogInfo("Waiting for server...");
		action_client->waitForServer();

		LogInfo("Sending goal to server ...");
		action_client->sendGoal(goal);

		LogInfo("Waiting for result from server...");
		bool finished_before_timeout = action_client->waitForResult(ros::Duration(action_timeout));

		if (finished_before_timeout)
		{
			actionlib::SimpleClientGoalState state = action_client->getState();

			LogInfo("Received result!");
		}
		else
		{
			LogInfo("Did not receive result!");
		}

		result = action_client->getResult();

		return result;
	}

	double UniformSensorBroker::GetSensor1Reading()
	{
		LogInfo("Requesting Sensor1 value ...");

		BSensorResultConstPtr result = Trigger(SENSOR1_TYPE);

        double value = result.get()->result;

		LogInfo("Returned Sensor1 value: %f", result);

		return 0;
	}
}
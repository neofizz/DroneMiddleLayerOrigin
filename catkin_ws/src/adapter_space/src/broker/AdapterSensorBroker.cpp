#include "AdapterSensorBroker.h"

namespace AdapterBrokerSpace
{
	AdapterSensorBroker::AdapterSensorBroker(string droneName, string brokerName) : AdapterBrokerBase(droneName, brokerName)
	{
		action_server = new actionlib::SimpleActionServer<adapter_space::BSensorAction>(nodeHandle, qualified_name, boost::bind(&AdapterSensorBroker::executeSensorActionCallback, this, _1), false);

		cancel_subscriber = nodeHandle.subscribe<actionlib_msgs::GoalID>(cancel_topic, 1000, &AdapterSensorBroker::CancelGoal, this);

		ros::Rate loop_rate(10);
		LogInfo("Initialized.");
	}

    void AdapterSensorBroker::executeSensorActionCallback(const adapter_space::BSensorGoalConstPtr& goal)
	{
		LogInfo("Callback triggered.");

		string type = goal.get()->type;

		if (type == SENSOR1_TYPE)
		{
            srand((unsigned) time(NULL));

            int random = 1 + (rand() % 1000);

            result.result = random;
		}

		LogInfo("Goal succeeded.");
		
		action_server->setSucceeded(result);

		LogInfo("Finisihed executing Callback.");
	}

    void AdapterSensorBroker::CancelGoal(const actionlib_msgs::GoalID goalId)
	{
		LogInfo("Canceling all goals. (goalID: %s) ...", goalId.id.c_str());

		action_server->setPreempted();

		LogInfo("All goals canceled.");
	}

	void AdapterSensorBroker::Start()
	{
		action_server->start();

		LogInfo("Started.");
	}
}
#include "AdapterSetupAction.h"

namespace AdapterSpace
{
    AdapterSetupAction::AdapterSetupAction(string droneName, string actionName,
        AdapterBrokerSpace::AdapterPositionBroker* broker, AdapterSetFlightModeAction* modeAction)
         : AdapterActionBase(drone_name, actionName)
    {
        position_broker = broker;
		mode_action = modeAction;

		action_server = new actionlib::SimpleActionServer<adapter_space::SetupAction>(nodeHandle, qualified_name, boost::bind(&AdapterSetupAction::executeAdapterSetupActionCallback, this, _1), false);
		action_client = new actionlib::SimpleActionClient<adapter_space::SetupAction>(actionName + "_" + droneName);

        LogInfo("Initialized.");
    }

    void AdapterSetupAction::SendInitOffboard()
    {
        adapter_space::SetupGoal goal;
        goal.initOffboard = true;
		
		action_client->sendGoal(goal);
    }

    adapter_space::SetupResultConstPtr AdapterSetupAction::SendGoal(adapter_space::SetupGoal goal)
	{
        LogInfo("Waiting for server ...");
		action_client->waitForServer();

        LogInfo("Triggering position query ...");

		action_client->sendGoal(goal);

        LogInfo("Waiting ...");

		bool finished_before_timeout = action_client->waitForResult();

        LogInfo("Received ...");

		if (finished_before_timeout)
		{
			actionlib::SimpleClientGoalState state = action_client->getState();

            LogInfo("Received result!");
		}
		else
		{
            LogInfo("Did not receive result!");
		}

        LogInfo("Goal sending finsihed.");

		if (action_client == nullptr)
		{
            LogInfo("action_client is Null!");
		}

		//action_client->getResult();

		return action_client->getResult();
	}

    void AdapterSetupAction::executeAdapterSetupActionCallback(const adapter_space::SetupGoalConstPtr& goal)
	{
        LogInfo("Callback executing ...");

        if (goal.get()->initOffboard)
        {
            initOffboard();
        }
		
        action_server->setSucceeded();

        LogInfo("Finisihed executing Callback.");
	}

    void AdapterSetupAction::initOffboard()
    {
        LogInfo("Begin: init OFFBOARD ...");

        setPointGlobalTopicPublisher = nodeHandle.advertise<geographic_msgs::GeoPoseStamped>(TOPIC_NAME_SETPOINT_GLOBAL, 1000);
        geographic_msgs::GeoPoseStamped msg;

        msg.pose.position.longitude = 0;
        msg.pose.position.latitude = 0;
        msg.pose.position.altitude = 0;

        for (int i = 10; ros::ok() && i > 0; --i)
        {
            setPointGlobalTopicPublisher.publish(msg);
            ros::spinOnce();
            rate.sleep();
            LogInfo("Init OFFBOARD points streaming.");
        }

        adapter_space::SetFlightModeGoal mode_goal;
        mode_goal.mode = "OFFBOARD";
        mode_action->SendGoal(mode_goal);

        LogInfo("Init Offboard finished.");
    }

    void AdapterSetupAction::Start()
	{
		action_server->start();
        LogInfo("Started.");
	}
}
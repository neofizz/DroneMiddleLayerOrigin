#include <chrono>
#include <thread>
#include "AdapterPositionBroker.h"

namespace AdapterBrokerSpace
{
	AdapterPositionBroker::AdapterPositionBroker(string droneName, string brokerName) : AdapterBrokerBase(droneName, brokerName)
	{
		action_server = new actionlib::SimpleActionServer<adapter_space::BPositionAction>(nodeHandle, qualified_name, boost::bind(&AdapterPositionBroker::executePositionBrokerActionCallback, this, _1), false);
		action_client = new actionlib::SimpleActionClient<adapter_space::BPositionAction>(qualified_name);

		cancel_subscriber = nodeHandle.subscribe<actionlib_msgs::GoalID>(cancel_topic, 1000, &AdapterPositionBroker::CancelGoal, this);

		ros::Rate loop_rate(10);
		LogInfo("Initialized.");
	}

	adapter_space::BPositionResultConstPtr AdapterPositionBroker::GetLocalPosition()
	{
		LogInfo("Getting local position once.");

		adapter_space::BPositionGoal posGoal;
		posGoal.kind = AdapterBrokerSpace::LOCAL_TYPE;
		posGoal.mode = AdapterBrokerSpace::SINGLE;

		adapter_space::BPositionResultConstPtr posResult = SendGoal(posGoal);

		return posResult;
	}

	adapter_space::BPositionResultConstPtr AdapterPositionBroker::GetGlobalPosition()
	{
		LogInfo("Getting global position once.");

		adapter_space::BPositionGoal posGoal;
		posGoal.kind = AdapterBrokerSpace::GEO_WGS84_TYPE;
		posGoal.mode = AdapterBrokerSpace::SINGLE;
		
		adapter_space::BPositionResultConstPtr posResult = SendGoal(posGoal);

		return posResult;
	}

	adapter_space::BPositionResultConstPtr AdapterPositionBroker::StartGlobalStreaming()
	{
		LogInfo("Turning global position streaming ON.");

		adapter_space::BPositionGoal posGoal;
		posGoal.kind = AdapterBrokerSpace::GEO_WGS84_TYPE;
		posGoal.mode = AdapterBrokerSpace::STREAM_ON;

		adapter_space::BPositionResultConstPtr posResult = SendGoal(posGoal);

		return posResult;
	}

	adapter_space::BPositionResultConstPtr AdapterPositionBroker::StopGlobalStreaming()
	{
		LogInfo("Turning global position streaming OFF.");

		adapter_space::BPositionGoal posGoal;
		posGoal.kind = AdapterBrokerSpace::GEO_WGS84_TYPE;
		posGoal.mode = AdapterBrokerSpace::STREAM_OFF;

		adapter_space::BPositionResultConstPtr posResult = SendGoal(posGoal);

		return posResult;
	}

	adapter_space::BPositionResultConstPtr AdapterPositionBroker::StartLocalStreaming()
	{
		LogInfo("Turning local position streaming ON.");

		adapter_space::BPositionGoal posGoal;
		posGoal.kind = AdapterBrokerSpace::LOCAL_TYPE;
		posGoal.mode = AdapterBrokerSpace::STREAM_ON;

		adapter_space::BPositionResultConstPtr posResult = SendGoal(posGoal);

		return posResult;
	}

	adapter_space::BPositionResultConstPtr AdapterPositionBroker::StopLocalStreaming()
	{
		LogInfo("Turning local position streaming OFF.");

		adapter_space::BPositionGoal posGoal;
		posGoal.kind = AdapterBrokerSpace::LOCAL_TYPE;
		posGoal.mode = AdapterBrokerSpace::STREAM_OFF;

		adapter_space::BPositionResultConstPtr posResult = SendGoal(posGoal);

		return posResult;
	}

	adapter_space::BPositionResultConstPtr AdapterPositionBroker::SendGoal(adapter_space::BPositionGoal goal)
	{
		LogInfo("Waiting for server ...");

		printGoalState();

		action_client->waitForServer();

		LogInfo("Triggering position query ...");

		action_client->sendGoal(goal,
			boost::bind(&AdapterPositionBroker::done_cb, this),
			boost::bind(&AdapterPositionBroker::active_cb, this),
			boost::bind(&AdapterPositionBroker::feedback_cb, this));

		//action_client->sendGoal(goal);

		LogInfo("Waitong ...");

		printGoalState();

		bool finished_before_timeout = action_client->waitForResult();

		LogInfo("Received ...");

		if (finished_before_timeout)
		{
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

		printGoalState();

		return action_client->getResult();
	}

	void AdapterPositionBroker::done_cb()
	{
		LogInfo("--> DONE");
	}

	void AdapterPositionBroker::active_cb()
	{
		LogInfo("--> ACTIVE");
	}

	void AdapterPositionBroker::feedback_cb()
	{
		LogInfo("--> FEEDBACK");
	}

	void AdapterPositionBroker::executePositionBrokerActionCallback(const adapter_space::BPositionGoalConstPtr& goal)
	{
		LogInfo("Callback triggered.");

		string kind = goal.get()->kind;
		string mode = goal.get()->mode;

		if (mode == SINGLE)
		{
			shutdownSubscription = true;
			attachAndListenToTopics(kind);
		}
		else if(mode == STREAM_OFF)
		{
			shutdownSubscription = true;
		}
		else if (mode == STREAM_ON)
		{
			shutdownSubscription = false;
			attachAndListenToTopics(kind);
		}
		else
		{
			LogInfo("Undefined mode.");

			action_server->setAborted(result);
			return;
		}

		LogInfo("Goal succeeded.");
		
		action_server->setSucceeded(result);

		LogInfo("Finisihed executing Callback.");
	}

	void AdapterPositionBroker::attachAndListenToTopics(string kind)
	{
		if (kind == LOCAL_TYPE)
		{
			localPositionTopicSubscriber =
				nodeHandle.subscribe(SpecificInboundLocalPositionTopicName, 1000, &AdapterPositionBroker::executeLocalPositionTopicCallback, this);

			LocalPositionTopicPublisher =
				nodeHandle.advertise<geometry_msgs::PoseStamped>(SpecificOutboundLocalPositionTopicName, 1000);

			LogInfo("Subscriber attached (localPositionTopicSubscriber).");

			ros::Rate loop_rate(10);

			while (!localTopicDataReceived)
			{
				ros::spinOnce();
				loop_rate.sleep();
			}

			localTopicDataReceived = false;

			LogInfo("Local Attaching terminated.");
		}

		if (kind == GEO_WGS84_TYPE)
		{
			globalPositionTopicSubscriber =
				nodeHandle.subscribe(SpecificInboundGlobalPositionTopicName, 1000, &AdapterPositionBroker::executeGlobalPositionTopicCallback, this);
		
			GlobalPositionTopicPublisher =
				nodeHandle.advertise<geographic_msgs::GeoPoseStamped>(SpecificOutboundGlobalPositionTopicName, 1000);

			LogInfo("Subscriber attached (globalPositionTopicSubscriber).");

			ros::Rate loop_rate(10);

			while (!globalTopicDataReceived)
			{
				ros::spinOnce();
				loop_rate.sleep();
			}

			globalTopicDataReceived = false;

			LogInfo("Global Attaching terminated.");
		}		
	}

	void AdapterPositionBroker::executeGlobalPositionTopicCallback(const sensor_msgs::NavSatFix::ConstPtr& msg)
	{
		result.geoPose.position.longitude = msg.get()->longitude;
		result.geoPose.position.latitude = msg.get()->latitude;
		result.geoPose.position.altitude = msg.get()->altitude;

		double longi = msg.get()->longitude;
		double lati = msg.get()->latitude;
		double alti = msg.get()->altitude;

		geographic_msgs::GeoPoseStamped pose;
		pose.pose.position.longitude = longi;
		pose.pose.position.latitude = lati;
		pose.pose.position.altitude = alti;

		GlobalPositionTopicPublisher.publish(pose);

		globalTopicDataReceived = true;

		if (shutdownSubscription)
		{
			globalPositionTopicSubscriber.shutdown();
			GlobalPositionTopicPublisher.shutdown();

			LogInfo("Shut down GLOBAL subscriber and publisher.");
		}
	}

	void AdapterPositionBroker::executeLocalPositionTopicCallback(const geometry_msgs::PoseStamped::ConstPtr& msg)
	{
		result.twistPose.position.x = msg.get()->pose.position.x;
		result.twistPose.position.y = msg.get()->pose.position.y;
		result.twistPose.position.z = msg.get()->pose.position.z;

		double x = msg.get()->pose.position.x;
		double y = msg.get()->pose.position.y;
		double z = msg.get()->pose.position.z;

		geometry_msgs::PoseStamped pose;
		pose.pose.position.x = x;
		pose.pose.position.y = y;
		pose.pose.position.z = z;

		LocalPositionTopicPublisher.publish(pose);

		localTopicDataReceived = true;

		if (shutdownSubscription)
		{
			localPositionTopicSubscriber.shutdown();
			LocalPositionTopicPublisher.shutdown();

			LogInfo("Shut down LOCAL subscriber and publisher.");
		}

		//ROS_INFO_NAMED(logger, "[%s] x3", full_broker_name.c_str());
	}

	void AdapterPositionBroker::CancelGoal(const actionlib_msgs::GoalID goalId)
	{
		LogInfo("Canceling all goals. (goalID: %s) ...", goalId.id.c_str());

		action_server->setPreempted();

		LogInfo("All goals canceled.");
	}

	void AdapterPositionBroker::Start()
	{
		action_server->start();

		LogInfo("Started.");
	}

	void AdapterPositionBroker::printGoalState()
	{
		actionlib::SimpleClientGoalState state = action_client->getState();
		LogInfo("goal state: %s", state.toString().c_str());
	}
}
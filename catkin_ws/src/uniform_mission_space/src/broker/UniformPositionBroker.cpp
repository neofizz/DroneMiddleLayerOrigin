#include "UniformPositionBroker.h"

namespace UniformSpace
{
	UniformPositionBroker::UniformPositionBroker(string droneName, string brokerName) : UniformBrokerBase(droneName, brokerName)
	{
		action_client = new actionlib::SimpleActionClient<BPositionAction>(qualified_broker_name, true);

		UniformPositionBroker::inboundGlobalPositionTopicName = drone_name + INBOUND_GLOBAL_POSITION_TOPIC_NAME;
		UniformPositionBroker::inboundLocalPositionTopicName = drone_name + INBOUND_LOCAL_POSITION_TOPIC_NAME;

		LogInfo("Initialized.");
	}

mutex m;

	BPositionResultConstPtr UniformPositionBroker::Trigger(string kind, string mode)
	{
		m.lock();

		BPositionGoal goal;
		BPositionResultConstPtr result;

		goal.kind = kind;
		goal.mode = mode;

		LogInfo("Triggering. kind: %s, mode: %s", kind.c_str(), mode.c_str());

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

		m.unlock();

		return result;
	}

	geometry_msgs::PoseStamped UniformPositionBroker::RequestXYZ()
	{
		LogInfo("Requesting single XYZ position ...");

		BPositionResultConstPtr result = Trigger(LOCAL_TYPE, SINGLE);

		geometry_msgs::PoseStamped pose;

		pose.pose.position.x = result.get()->twistPose.position.x;
		pose.pose.position.y = result.get()->twistPose.position.y;
		pose.pose.position.z = result.get()->twistPose.position.z;

		LogInfo("Returned XYZ position %f / %f / %f", pose.pose.position.x, pose.pose.position.y, pose.pose.position.z);

		return pose;
	}
	
	geographic_msgs::GeoPoseStamped UniformPositionBroker::RequestLLA()
	{
		LogInfo("Requesting single LLA position ...");

		BPositionResultConstPtr result = Trigger(GEO_WGS84_TYPE, SINGLE);

		geographic_msgs::GeoPoseStamped pose;

		pose.pose.position.longitude = result.get()->geoPose.position.longitude;
		pose.pose.position.latitude = result.get()->geoPose.position.latitude;
		pose.pose.position.altitude = result.get()->geoPose.position.altitude;

		LogInfo("Returned LLA position %f / %f / %f", pose.pose.position.longitude, pose.pose.position.latitude, pose.pose.position.altitude);

		return pose;
	}

	void UniformPositionBroker::StartStreamXYZ()
	{
		LogInfo("Start streaming XYZ position ...");

		BPositionResultConstPtr result = Trigger(LOCAL_TYPE, STREAM_ON);

		localPositionTopicSubscriber =
			nodeHandle.subscribe<geometry_msgs::PoseStamped>(
				UniformPositionBroker::inboundLocalPositionTopicName, 1000, &UniformPositionBroker::executeLocalPositionTopicCallback, this);
		
		LogInfo("Streaming XYZ position started.");
	}

	geometry_msgs::PoseStamped UniformPositionBroker::GetXYZFromStream()
	{
		LogInfo("Returning XYZ from stream: %f / %f / %f", xyz.pose.position.x, xyz.pose.position.y, xyz.pose.position.z);

		return xyz;
	}

	void UniformPositionBroker::StopStreamXYZ()
	{
		BPositionResultConstPtr result = Trigger(LOCAL_TYPE, STREAM_OFF);

		localPositionTopicSubscriber.shutdown();

		LogInfo("Stop streaming XYZ position.");
	}

	void UniformPositionBroker::StartStreamLLA()
	{
		LogInfo("Start streaming LLA position ...");

		BPositionResultConstPtr result = Trigger(GEO_WGS84_TYPE, STREAM_ON);

		globalPositionTopicSubscriber =
			nodeHandle.subscribe<geographic_msgs::GeoPoseStamped>(
				inboundGlobalPositionTopicName, 1000, &UniformPositionBroker::executeGlobalPositionTopicCallback, this);

		LogInfo("Streaming LLA position started.");
	}

	geographic_msgs::GeoPoseStamped UniformPositionBroker::GetLLAFromStream()
	{
		LogInfo("Returning LLA from stream: %f / %f / %f", lla.pose.position.longitude, lla.pose.position.latitude, lla.pose.position.altitude);

		return lla;
	}

	void UniformPositionBroker::StopStreamLLA()
	{
		BPositionResultConstPtr result = Trigger(GEO_WGS84_TYPE, STREAM_OFF);

		globalPositionTopicSubscriber.shutdown();

		LogInfo("Stop streaming LLA position.");
	}

	void UniformPositionBroker::executeLocalPositionTopicCallback(const geometry_msgs::PoseStamped::ConstPtr& msg)
	{
		xyz = *msg;
	}

	void UniformPositionBroker::executeGlobalPositionTopicCallback(const geographic_msgs::GeoPoseStamped::ConstPtr& msg)
	{
		lla = *msg;
	}

	bool UniformPositionBroker::IsLocallyStreaming()
	{
		if (localPositionTopicSubscriber.getNumPublishers() > 0)
			return true;
		else
			return false;
	}

	bool UniformPositionBroker::IsGloballyStreaming()
	{
		if (globalPositionTopicSubscriber.getNumPublishers() > 0)
			return true;
		else
			return false;
	}

	geometry_msgs::PoseStamped UniformPositionBroker::get_local_pose()
	{
		geometry_msgs::PoseStamped pose;

		if (IsLocallyStreaming())
			pose = GetXYZFromStream();
		else
			pose = RequestXYZ();
		
		return pose;
	}

	geographic_msgs::GeoPoseStamped UniformPositionBroker::get_geo_pose()
	{
		geographic_msgs::GeoPoseStamped pose;

		if (IsGloballyStreaming())
			pose = GetLLAFromStream();
		else
			pose = RequestLLA();
		
		return pose;
	}

	double UniformPositionBroker::GetX()
	{
		geometry_msgs::PoseStamped pose = get_local_pose();
		return pose.pose.position.x;
	}

	double UniformPositionBroker::GetY()
	{
		geometry_msgs::PoseStamped pose = get_local_pose();
		return pose.pose.position.y;
	}

	double UniformPositionBroker::GetZ()
	{
		geometry_msgs::PoseStamped pose = get_local_pose();
		return pose.pose.position.z;
	}

	geometry_msgs::PoseStamped UniformPositionBroker::GetXYZ()
	{
		geometry_msgs::PoseStamped pose = get_local_pose();
		return pose;
	}

	double UniformPositionBroker::GetLongitude()
	{
		geographic_msgs::GeoPoseStamped pose = get_geo_pose();
		return pose.pose.position.longitude;
	}

	double UniformPositionBroker::GetLatitude()
	{
		geographic_msgs::GeoPoseStamped pose = get_geo_pose();
		return pose.pose.position.latitude;
	}

	double UniformPositionBroker::GetAltitude()
	{
		geographic_msgs::GeoPoseStamped pose = get_geo_pose();
		return pose.pose.position.altitude;
	}

	geographic_msgs::GeoPoseStamped UniformPositionBroker::GetLLA()
	{
		geographic_msgs::GeoPoseStamped pose = get_geo_pose();
		return pose;
	}
}
/* #include "AdapterMovingAction.h"
#include <adapter_space/MovingAction.h>
#include <adapter_space/MovingGoal.h>
#include <cmath>

namespace AdapterSpace
{
	double amsl;

	AdapterMovingAction::AdapterMovingAction(string name,
		AdapterBrokerSpace::AdapterPositionBroker* positionBroker = nullptr, AdapterSetFlightModeAction* modeAction = nullptr) : AdapterActionBase(name)
	{
		action_server = new actionlib::SimpleActionServer<adapter_space::MovingAction>(nh_, name, boost::bind(&AdapterMovingAction::executeAdapterMovingActionCallback, this, _1), false);

		if (positionBroker == nullptr)
			position_broker = new AdapterBrokerSpace::AdapterPositionBroker("Internal_Position_Broker");
		else
			position_broker = positionBroker;

		if (modeAction == nullptr)
			mode_action = new AdapterSetFlightModeAction("Internal_Mode_Action");
		else
			mode_action = modeAction;

		setPointGlobalTopicPublisher = nodeHandle.advertise<geographic_msgs::GeoPoseStamped>(TOPIC_NAME_SETPOINT_GLOBAL, 1000);
		setPointLocalTopicPublisher = nodeHandle.advertise<geometry_msgs::PoseStamped>(TOPIC_NAME_SETPOINT_LOCAL, 1000);
		setPointCmdVelTopicPublisher = nodeHandle.advertise<geometry_msgs::TwistStamped>(TOPIC_NAME_SETPOINT_CMDVEL, 1000);

		cancel_subscriber = nh_.subscribe<actionlib_msgs::GoalID>(cancel_topic, 1000, &AdapterMovingAction::CancelGoal, this);

		ROS_INFO_NAMED(logger, "[%s] initialized. (cancel: %s)", full_action_name.c_str(), cancel_topic.c_str());
	}

	void AdapterMovingAction::init_offboard(AdapterBrokerSpace::AdapterPositionBroker* broker)
	{
		ROS_INFO_NAMED(logger, "[%s] Init.", full_action_name.c_str());

		adapter_space::BPositionGoal posGoal;
		posGoal.kind = AdapterBrokerSpace::GEO_WGS84_TYPE;
		posGoal.mode = AdapterBrokerSpace::SINGLE;

		adapter_space::BPositionResultConstPtr result = broker->SendGoal(posGoal);

		geographic_msgs::GeoPoseStamped msg;

		msg.pose.position.longitude = result.get()->geoPose.position.longitude;
		msg.pose.position.latitude = result.get()->geoPose.position.latitude;
		msg.pose.position.altitude = result.get()->geoPose.position.altitude;

		ROS_INFO_NAMED(logger, "[%s] foo 3", full_action_name.c_str());

		for (int i = 20; ros::ok() && i > 0; --i)
		{
			setPointGlobalTopicPublisher.publish(msg);
			ros::spinOnce();
			rate.sleep();
			ROS_DEBUG_NAMED(debug_logger, "[%s] Init OFFBOARD points streaming.", full_action_name.c_str());
		}

		adapter_space::SetFlightModeGoal mode_goal;
		mode_goal.mode = "OFFBOARD";
		ROS_INFO_NAMED(logger, "[%s] mode_goal: %s.", full_action_name.c_str(), mode_goal.mode.c_str());
		mode_action->SendGoal(mode_goal);

		ROS_INFO_NAMED(logger, "[%s] Init finished", full_action_name.c_str());
	}

	void AdapterMovingAction::start_position_broker(AdapterBrokerSpace::AdapterPositionBroker* broker)
	{
		ROS_INFO_NAMED(logger, "[%s] Triggering START of position broker streaming ...", full_action_name.c_str());
		adapter_space::BPositionGoal posGoal;
		posGoal.kind = AdapterBrokerSpace::GEO_WGS84_TYPE;
		posGoal.mode = AdapterBrokerSpace::STREAM_ON;

		broker->SendGoal(posGoal);
	}

	void AdapterMovingAction::stop_position_broker(AdapterBrokerSpace::AdapterPositionBroker* broker)
	{
		ROS_INFO_NAMED(logger, "[%s] Triggering STOP of position broker streaming ...", full_action_name.c_str());
		adapter_space::BPositionGoal posGoal;
		posGoal.kind = AdapterBrokerSpace::GEO_WGS84_TYPE;
		posGoal.mode = AdapterBrokerSpace::STREAM_OFF;

		broker->SendGoal(posGoal);
	}

	void AdapterMovingAction::executeAdapterMovingActionCallback(const adapter_space::MovingGoalConstPtr& goal)
	{
		ROS_INFO_NAMED(logger, "[%s] Callback executing ...", full_action_name.c_str());

		init_offboard(position_broker);

		if (goal.get()->mode == MODE_MOVETO_GLOBAL || goal.get()->mode == MODE_MOVETO_GLOBAL_INT)	// MODE_MOVETO_GLOBAL
		{
			handle_global_pos_callback(goal);
			action_server->setSucceeded();

		}
		else if (goal.get()->mode == MODE_MOVETO_LOCAL || goal.get()->mode == MODE_MOVETO_LOCAL_INT) // MODE_MOVETO_LOCAL
		{
			handle_local_pos_callback(goal);
			action_server->setSucceeded();
		}
		else if (goal.get()->mode == MODE_HEADTO_ON || goal.get()->mode == MODE_HEADTO_ON_INT) // MODE_HEADTO_ON
		{	
			handle_cmdvel_on(goal);
			action_server->setSucceeded();
		}
		else
		{
			ROS_INFO_NAMED(logger, "[%s] mode: UNKNOWN.", full_action_name.c_str());
			action_server->setSucceeded();
		}
	}

	void AdapterMovingAction::globalPositionCallback(const geographic_msgs::GeoPoseStamped msg)
	{
		ROS_INFO_NAMED(logger, "[%s] globalPositionCallback", full_action_name.c_str());

		feedback.longitude = msg.pose.position.longitude;
		feedback.latitude = msg.pose.position.latitude;
		feedback.altitude = msg.pose.position.altitude;

		ROS_INFO_NAMED(logger, "[%s] longi: %f", full_action_name.c_str(), feedback.longitude);

		if (!doGlobalPositionsMatch(msg, targetGlobal->GeoPoseStamped))
		{
			ROS_DEBUG_NAMED(debug_logger, "[%s] Publishing to setPointGlobalTopicPublisher: %f, %f, %f.",
				logger.c_str(),
					targetGlobal->GeoPoseStamped.pose.position.longitude,
					targetGlobal->GeoPoseStamped.pose.position.latitude,
					targetGlobal->GeoPoseStamped.pose.position.altitude);

			setPointGlobalTopicPublisher.publish(targetGlobal->GeoPoseStamped);
		}
		else
			isPositionReached = true;

		action_server->publishFeedback(feedback);
	}

	void AdapterMovingAction::localPositionCallback(const geometry_msgs::PoseStamped msg)
	{
		ROS_INFO_NAMED(logger, "[%s] localPositionCallback", full_action_name.c_str());

		feedback.x = msg.pose.position.x;
		feedback.y = msg.pose.position.y;
		feedback.z = msg.pose.position.z;

		if (!doLocalPositionsMatch(msg, targetLocal->PoseStamped))
		{
			ROS_DEBUG_NAMED(debug_logger, "[%s] Publishing to setPointGlobalTopicPublisher: %f, %f, %f.",
				logger.c_str(),
					targetLocal->PoseStamped.pose.position.x,
					targetLocal->PoseStamped.pose.position.y,
					targetLocal->PoseStamped.pose.position.z);

			setPointLocalTopicPublisher.publish(targetLocal->PoseStamped);
		}
		else
			isPositionReached = true;

		action_server->publishFeedback(feedback);
	}

	bool AdapterMovingAction::doGlobalPositionsMatch(geographic_msgs::GeoPoseStamped point1, geographic_msgs::GeoPoseStamped point2, double tolerance)
	{
		if ((abs(point1.pose.position.longitude - point2.pose.position.longitude) <= tolerance) &&
			(abs(point1.pose.position.latitude - point2.pose.position.latitude) <= tolerance) &&
			(abs(point1.pose.position.altitude - point2.pose.position.altitude) <= tolerance))
		{
			ROS_DEBUG_NAMED(debug_logger, "[%s] Points matching! (%f, %f, %f vs. %f, %f, %f).",
				full_action_name.c_str(), point1.pose.position.longitude, point1.pose.position.latitude, point1.pose.position.altitude,
				point2.pose.position.longitude, point2.pose.position.latitude, point2.pose.position.altitude);

			return true;
		}

		ROS_DEBUG_NAMED(debug_logger, "[%s] Points not matching! (%f, %f, %f vs. %f, %f, %f).",
			logger.c_str(), point1.pose.position.longitude, point1.pose.position.latitude, point1.pose.position.altitude,
			point2.pose.position.longitude, point2.pose.position.latitude, point2.pose.position.altitude);

		return false;
	}

	bool AdapterMovingAction::doLocalPositionsMatch(geometry_msgs::PoseStamped point1, geometry_msgs::PoseStamped point2, double tolerance)
	{
		if ((abs(point1.pose.position.x - point2.pose.position.x) <= tolerance) &&
			(abs(point1.pose.position.y - point2.pose.position.y) <= tolerance) &&
			(abs(point1.pose.position.z - point2.pose.position.z) <= tolerance))
		{
			ROS_DEBUG_NAMED(debug_logger, "[%s] Points matching! (%f, %f, %f vs. %f, %f, %f).",
				full_action_name.c_str(), point1.pose.position.x, point1.pose.position.y, point1.pose.position.z,
				point2.pose.position.x, point2.pose.position.y, point2.pose.position.z);

			return true;
		}

		ROS_DEBUG_NAMED(debug_logger, "[%s] Points not matching! (%f, %f, %f vs. %f, %f, %f).",
			full_action_name.c_str(), point1.pose.position.x, point1.pose.position.y, point1.pose.position.z,
			point2.pose.position.x, point2.pose.position.y, point2.pose.position.z);

		return false;
	}

	void AdapterMovingAction::handle_global_pos_callback(const adapter_space::MovingGoalConstPtr& goal)
	{
		ROS_INFO_NAMED(logger, "[%s] mode: %s.", full_action_name.c_str(), MODE_MOVETO_GLOBAL.c_str());

		adapter_space::BPositionGoal posGoal;
		posGoal.kind = AdapterBrokerSpace::GEO_WGS84_TYPE;
		posGoal.mode = AdapterBrokerSpace::SINGLE;
		adapter_space::BPositionResultConstPtr posResult = position_broker->SendGoal(posGoal);

		start_position_broker(position_broker);

		targetGlobal = new GeoPoint();

		if (goal->isAbsolute)
		{
			targetGlobal->Set(goal.get()->longitude, goal.get()->latitude, goal.get()->altitude, true);
			ROS_INFO_NAMED(logger, "[%s] targetGlobal set: long: %f, lat: %f, alt: %f", full_action_name.c_str(), targetGlobal->longitude, targetGlobal->latitude, targetGlobal->altitude);
		}
		else
		{
			double targetLongitude = posResult->geoPose.position.longitude + goal.get()->longitude;
			double targetLatitude = posResult->geoPose.position.latitude + goal.get()->latitude;
			double targetAltitude = posResult->geoPose.position.altitude + goal.get()->altitude;

			targetGlobal->Set(targetLongitude, targetLatitude, targetAltitude, true);
		}

		ROS_INFO_NAMED(logger, "[%s] Targeting global position: %f, %f, %f", full_action_name.c_str(), targetGlobal->longitude, targetGlobal->latitude, targetGlobal->altitude);

		isPositionReached = false;

		globalPositionSubscriber =
			nodeHandle.subscribe<geographic_msgs::GeoPoseStamped>(AdapterBrokerSpace::OutboundGlobalPositionTopicName, 1000, &AdapterMovingAction::globalPositionCallback, this);

		ros::Rate loop_rate(20);

		while (!isPositionReached)
		{
			if (wasPreempted)
			{
				ROS_INFO_NAMED(logger, "[%s] Movement preempted!", full_action_name.c_str());
				wasPreempted = false;
				break;
			}

			ROS_DEBUG_NAMED(debug_logger, "[%s] Position not reached!", full_action_name.c_str());
			ros::spinOnce();
			loop_rate.sleep();
		}

		ROS_INFO_NAMED(logger, "[%s] Moving terminated.", full_action_name.c_str());

		stop_position_broker(position_broker);
		globalPositionSubscriber.shutdown();
	}

	void AdapterMovingAction::handle_local_pos_callback(const adapter_space::MovingGoalConstPtr& goal)
	{
		ROS_INFO_NAMED(logger, "[%s] mode: %s.", full_action_name.c_str(), MODE_MOVETO_LOCAL.c_str());

		ROS_INFO_NAMED(logger, "[%s] Getting singular current position ...", full_action_name.c_str());
		adapter_space::BPositionGoal posGoal;
		posGoal.kind = AdapterBrokerSpace::LOCAL_TYPE;
		posGoal.mode = AdapterBrokerSpace::SINGLE;
		adapter_space::BPositionResultConstPtr posResult = position_broker->SendGoal(posGoal);
		ROS_INFO_NAMED(logger, "[%s] Singular current position: %f, %f, %f", full_action_name.c_str(), posResult->twistPose.position.x, posResult->twistPose.position.y, posResult->twistPose.position.z);

		start_position_broker(position_broker);

		targetLocal = new LocalPoint();

		if (goal->isAbsolute)
			targetLocal->Set(goal.get()->x, goal.get()->y, goal.get()->z);
		else
		{
			double x = posResult->twistPose.position.x + goal.get()->x;
			double y = posResult->twistPose.position.y + goal.get()->y;
			double z = posResult->twistPose.position.z + goal.get()->z;

			targetLocal->Set(x, y, z);
		}

		ROS_INFO_NAMED(logger, "[%s] Targeting local position: %f, %f, %f", full_action_name.c_str(), targetLocal->x, targetLocal->y, targetLocal->z);

		ros::Rate loop_rate(20);

		isPositionReached = false;

		localPositionSubscriber =
			nodeHandle.subscribe<geometry_msgs::PoseStamped>(AdapterBrokerSpace::OutboundLocalPositionTopicName, 1000, &AdapterMovingAction::localPositionCallback, this);

		while (!isPositionReached)
		{
			if (wasPreempted)
			{
				ROS_INFO_NAMED(logger, "[%s] Movement preempted!", full_action_name.c_str());
				wasPreempted = false;
				break;
			}

			ROS_DEBUG_NAMED(debug_logger, "[%s] Position not reached!", full_action_name.c_str());
			ros::spinOnce();
			loop_rate.sleep();
		}

		stop_position_broker(position_broker);
		localPositionSubscriber.shutdown();

		ROS_INFO_NAMED(logger, "[%s] Moving terminated.", full_action_name.c_str());
	}

	void AdapterMovingAction::handle_cmdvel_on(const adapter_space::MovingGoalConstPtr& goal)
	{
		ROS_INFO_NAMED(logger, "[%s] mode: %s.", full_action_name.c_str(), MODE_HEADTO_ON.c_str());

		geometry_msgs::TwistStamped t;
		double x = t.twist.linear.x = goal.get()->x;
		double y = t.twist.linear.y = goal.get()->y;
		double z = t.twist.linear.z = goal.get()->z;

		if (x == 0 && y == 0 && z == 0)
		{
			ROS_INFO_NAMED(logger, "[%s] Zero-Movement recognized. Halting.", full_action_name.c_str());
			return;
		}

		doCmdVelPublish = true;

		ROS_INFO_NAMED(logger, "[%s] Heading turned ON,", full_action_name.c_str());

		ros::Rate loop_rate(20);

		while (doCmdVelPublish)
		{
			if (wasPreempted)
			{
				ROS_INFO_NAMED(logger, "[%s] Movement preempted!", full_action_name.c_str());
				wasPreempted = false;
				break;
			}

			ROS_DEBUG_NAMED(debug_logger, "[%s] Publishing to setPointCmdVelTopicPublisher: %f, %f, %f %d.",
				logger.c_str(), t.twist.linear.x, t.twist.linear.y, t.twist.linear.z, action_server->isNewGoalAvailable());

			setPointCmdVelTopicPublisher.publish(t);
			ros::spinOnce();
			loop_rate.sleep();

			if (action_server->isNewGoalAvailable())
			{
				wasPreempted = true;
				ROS_INFO_NAMED(logger, "[%s] Preemting movement - new goal arrived.", full_action_name.c_str());
			}
			
		}

		ROS_INFO_NAMED(logger, "[%s] Heading turned OFF,", full_action_name.c_str());
	}

	void AdapterMovingAction::CancelGoal(const actionlib_msgs::GoalID goalId)
	{
		ROS_INFO_NAMED(logger, "[%s] Canceling all goals. (goalID: %s) ...", full_action_name.c_str(), goalId.id);

		action_server->setPreempted(result, "Bam");
		wasPreempted = true;

		ROS_INFO_NAMED(logger, "[%s] All goals canceled.", full_action_name.c_str());
	}

	void AdapterMovingAction::Start()
	{
		action_server->start();
		ROS_INFO_NAMED(logger, "[%s] started.", full_action_name.c_str());
	}
} */
#include "AdapterActionBase.h"
#include "AdapterPositionBroker.h"
#include "AdapterSetFlightModeAction.h"
#include <actionlib/server/simple_action_server.h>
#include <actionlib/client/simple_action_client.h>
#include <adapter_space/MovingAction.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TwistStamped.h>
#include <geographic_msgs/GeoPoseStamped.h>
#include <LocationValidator.h>
#include "Mover.h"

namespace AdapterSpace
{
	const string MODE_MOVETO_GLOBAL = "MOVETO_GLOBAL";
	const string MODE_MOVETO_LOCAL = "MOVETO_LOCAL";
	const string MODE_HEADTO_ON = "HEADTO_ON";
	const string MODE_HEADTO_OFF = "HEADTO_OFF";

	const string MODE_MOVETO_GLOBAL_INT = "1";
	const string MODE_MOVETO_LOCAL_INT = "2";
	const string MODE_HEADTO_ON_INT = "3";
	const string MODE_HEADTO_OFF_INT = "4";

	class AdapterMovingAction : protected AdapterActionBase
	{
		private:

		protected:

			string TOPIC_NAME_SETPOINT_GLOBAL;
			string TOPIC_NAME_SETPOINT_LOCAL;
			string TOPIC_NAME_SETPOINT_CMDVEL;

			actionlib::SimpleActionServer<adapter_space::MovingAction>* action_server;
			actionlib::SimpleActionClient<adapter_space::MovingAction>* action_client;

			AdapterSpaceSupport::Mover* mover;
			AdapterBrokerSpace::AdapterPositionBroker* position_broker;
			AdapterSetFlightModeAction* mode_action;
			AdapterSpaceSupport::LocationValidator* location_validator;

			adapter_space::MovingFeedback feedback;
			adapter_space::MovingResult result;

			void executeAdapterMovingActionCallback(const adapter_space::MovingGoalConstPtr& goal);
			AdapterSpaceSupport::GeoPoint* ConvertGoalToGlobalTarget(const adapter_space::MovingGoalConstPtr& goal);
			AdapterSpaceSupport::LocalPoint* ConvertGoalToLocalTarget(const adapter_space::MovingGoalConstPtr& goal);
			AdapterSpaceSupport::LocalPoint* ConvertGoalToHeadingTarget(const adapter_space::MovingGoalConstPtr& goal);
			void globalPositionCallback(geographic_msgs::GeoPoseStamped msg);
			void localPositionCallback(const geometry_msgs::PoseStamped msg);
			void cmdVelPublish(geometry_msgs::TwistStamped msg);

			ros::Publisher setPointGlobalTopicPublisher;
            ros::Publisher setPointLocalTopicPublisher;
            ros::Publisher setPointCmdVelTopicPublisher;
            ros::Subscriber globalPositionSubscriber;
            ros::Subscriber localPositionSubscriber;

		public:

			AdapterMovingAction(string drone_name, string name,
				AdapterBrokerSpace::AdapterPositionBroker* broker, AdapterSetFlightModeAction* modeAction);

			void Start();
			void CancelCurrentGoal();
			void CancelGoal(const actionlib_msgs::GoalID msg);
	};
}
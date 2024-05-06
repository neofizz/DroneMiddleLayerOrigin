#ifndef ADAPTER_MODE_ACTION_H_
#define ADAPTER_MODE_ACTION_H_

#include "AdapterActionBase.h"
#include <adapter_space/SetFlightModeAction.h>
#include <AdapterStatusBroker.h>
#include <AdapterPositionBroker.h>
#include <mavros_msgs/SetMode.h>

namespace AdapterSpace
{
	const string MODE_PREFLIGHT = "PREFLIGHT";
	const string MODE_MANUAL = "MANUAL";
	const string MODE_STABILIZED = "STABILIZED";
	const string MODE_ACRO = "ACRO";
	const string MODE_RATTITUDE = "RATTITUDE";
	const string MODE_ALTITUDE = "ALTITUDE";
	const string MODE_OFFBOARD = "OFFBOARD";
	const string MODE_POSITION = "POSITION";
	const string MODE_HOLD = "HOLD";
	const string MODE_MISSION = "MISSION";
	const string MODE_RETURN = "RETURN";
	const string MODE_FOLLOWME = "FOLLOWME";
	const string MODE_GUIDED = "GUIDED";
	const string MODE_AUTO = "AUTO";
	const string MODE_TEST = "TEST";

	class AdapterSetFlightModeAction : protected AdapterActionBase
	{
		protected:

			const int MODE_MANUAL_DISARMED = 64;
			const int MODE_MANUAL_ARMED = 192;
			const int MODE_STABILIZED_DISARMED = 80;
			const int MODE_STABILIZED_ARMED = 208;
			const int MODE_GUIDED_DISARMED = 88;
			const int MODE_GUIDED_ARMED = 216;
			const int MODE_AUTO_DISARMED = 92;
			const int MODE_AUTO_ARMED = 220;
			const int MODE_TEST_DISARMED = 66;
			const int MODE_TEST_ARMED = 194;
			const string MODE_OFFBOARD = "OFFBOARD";

			actionlib::SimpleActionServer<adapter_space::SetFlightModeAction>* action_server;
			actionlib::SimpleActionClient<adapter_space::SetFlightModeAction>* action_client;

			adapter_space::SetFlightModeActionFeedback feedback;
			adapter_space::SetFlightModeActionResult result;

			ros::Rate two_hz_rate = ros::Rate(20.0);
			string TOPIC_NAME_SETPOINT_GLOBAL;
			string TOPIC_NAME_SETPOINT_LOCAL;
            ros::Publisher setPointGlobalTopicPublisher;
			ros::Publisher setPointLocalTopicPublisher;

			AdapterBrokerSpace::AdapterPositionBroker* position_broker;
			AdapterBrokerSpace::AdapterStatusBroker* status_broker;

			ros::ServiceClient service_client;
			string service_name;

			void set_mode(string mode);
			void set_offboard_mode_local();
			void set_offboard_mode_global();

			string loc_mode;

		public:

			AdapterSetFlightModeAction(string drone_name, string name, string localization_mode,
				AdapterBrokerSpace::AdapterPositionBroker* positionBroker, AdapterBrokerSpace::AdapterStatusBroker* statusBroker);

			void SetOffboardMode();
			void SetHoldMode();

			void executeAdapterSetFlightModeActionCallback(const adapter_space::SetFlightModeGoalConstPtr& goal);
			adapter_space::SetFlightModeResultConstPtr SendGoal(adapter_space::SetFlightModeGoal goal);
			void CancelGoal(const actionlib_msgs::GoalID msg);
			void Start();
		};
}

#endif // ADAPTER_MODE_ACTION_H_
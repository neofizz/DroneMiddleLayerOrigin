#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <adapter_space/TakeOffAction.h>
#include "AdapterTakeOffAction.h"
#include "AdapterLandAction.h"
#include "AdapterArmingAction.h"
#include "AdapterMovingAction.h"
#include "AdapterPositionBroker.h"
#include "AdapterStatusBroker.h"
#include "AdapterSetFlightModeAction.h"
#include "AdapterSetupAction.h"
#include "AdapterDebugAction.h"
#include "AdapterDummy1Action.h"
#include "AdapterDummy2Action.h"
#include "AdapterDummy3Action.h"
#include "AdapterSensorBroker.h"
#include "AdapterOrbitAction.h"

string logger = "Adapter Space";

namespace AdapterSpace
{
	class AdapterSpace
	{
		private:

			string drone_name;
			string localization_mode;

			AdapterArmingAction* arming_action;
			AdapterTakeOffAction* takeoff_action;
			AdapterLandAction* land_action;
			AdapterMovingAction* moving_action;
			AdapterSetFlightModeAction* mode_action;
			AdapterDebugAction* debugging_action;
			AdapterSetupAction* setup_action;
			AdapterDummy1Action* dummy1_action;
			AdapterDummy2Action* dummy2_action;
			AdapterDummy3Action* dummy3_action;
			AdapterOrbitAction* orbit_action;

			AdapterBrokerSpace::AdapterPositionBroker* position_broker;
			AdapterBrokerSpace::AdapterStatusBroker* status_broker;
			AdapterBrokerSpace::AdapterSensorBroker* sensor_broker;

		public:

		AdapterSpace(int argc, char** argv, string instance = "0")
		{
			initialize(argc, argv);

			ROS_INFO_NAMED(logger, "[%s] Adapter Space drone", logger.c_str(), drone_name.c_str());
			
			position_broker = new AdapterBrokerSpace::AdapterPositionBroker(drone_name, "Position");
			status_broker = new AdapterBrokerSpace::AdapterStatusBroker(drone_name, "Status");
			sensor_broker = new AdapterBrokerSpace::AdapterSensorBroker(drone_name, "Sensor");

			land_action = new AdapterLandAction(drone_name, "Land", status_broker);
			arming_action = new AdapterArmingAction(drone_name, "Arm", status_broker);

			mode_action = new AdapterSetFlightModeAction(drone_name, "SetFlightMode", localization_mode, position_broker, status_broker);
			takeoff_action = new AdapterTakeOffAction(drone_name, "TakeOff", localization_mode, position_broker, mode_action);
			moving_action = new AdapterMovingAction(drone_name, "Move", position_broker, mode_action);
			debugging_action = new AdapterDebugAction(drone_name, "Debug", position_broker, mode_action);
			setup_action = new AdapterSetupAction(drone_name, "Setup", position_broker, mode_action);
			dummy1_action = new AdapterDummy1Action(drone_name, "Dummy1");
			dummy2_action = new AdapterDummy2Action(drone_name, "Dummy2");
			dummy3_action = new AdapterDummy3Action(drone_name, "Dummy3");
			orbit_action = new AdapterOrbitAction(drone_name, "Orbit", position_broker, mode_action);

			ROS_INFO_NAMED(logger, "[%s] Adapter Space initialized.", logger.c_str());
		}

		void initialize(int argc, char** argv)
		{
			ROS_INFO_NAMED(logger, "Initializing Adapter Space ...");

			const string const_node_name = "UniformSpace";
			string instance_name;
			string qualified_node_name;

			string arg0 = argv[1];
			ROS_INFO_NAMED(logger, "arg0: %s", arg0.c_str());

			if (arg0 == "args")
			{
				ROS_INFO_NAMED(logger, "using command line arguments.");

				ROS_INFO_NAMED(
					logger, "ros::init arguments: argv[0]: %s, argv[1]: %s, argv[2]: %s, argv[3]: %s, argv[4]: %s",
						argv[0], argv[1], argv[2], argv[3], argv[4]);

				drone_name = argv[2];
				instance_name = argv[3];
				qualified_node_name = "AdapterSpace" + instance_name + "_" + drone_name;
				localization_mode = argv[4];

				ros::init(argc, argv, qualified_node_name);
			}
			else
			{
				ROS_INFO_NAMED(logger, "using node ros parameters.");

				ros::init(argc, argv, const_node_name);

				qualified_node_name = ros::this_node::getName();
				ros::param::get(qualified_node_name + "/drone", drone_name);
				ros::param::get(qualified_node_name + "/instance", instance_name);
				ros::param::get(qualified_node_name + "/localization", localization_mode);

				ROS_INFO_NAMED(logger, "drone_name: %s, instance_name: %s", drone_name.c_str(), instance_name.c_str());
			}

			ROS_INFO_NAMED(logger, "Adapter Space initialized (LOCALIZATION_MODE: %s).", localization_mode.c_str());
		}

		void Start()
		{
			position_broker->Start();
			status_broker->Start();
			sensor_broker->Start();

			arming_action->Start();
			takeoff_action->Start();
			land_action->Start();
			moving_action->Start();
			mode_action->Start();
			debugging_action->Start();
			dummy1_action->Start();
			dummy2_action->Start();
			dummy3_action->Start();
			orbit_action->Start();
		}
	};
}

int main(int argc, char** argv)
{
	AdapterSpace::AdapterSpace adapter(argc, argv);
	adapter.Start();

	ROS_INFO_NAMED(logger, "[%s] AdapterSpace starting ros::spin().", logger.c_str());
	ros::spin();

	ROS_INFO_NAMED(logger, "[%s] Terminated.", logger.c_str());

	return 0;
}
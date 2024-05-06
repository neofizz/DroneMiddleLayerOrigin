#include "UniformMissionSpace.h"
#include "UniformApi.h"
#include <thread>

using namespace std;

string logger = "UniformMissionSpace";

void CreateAndInitUniformSpace(char* localization_mode, char* droneName, char* instanceName = "0")
{
	char* arguments[3];
	arguments[0] = "./uniform";
	arguments[1] = "args";
	arguments[2] = droneName;
	arguments[3] = instanceName;
	//arguments[4] = localization_mode;

	ROS_INFO_NAMED(logger, "Starting Uniform Mission Space ...");

	UniformSpace::UniformMissionSpace* ums = new UniformSpace::UniformMissionSpace(0, arguments);

	ROS_INFO_NAMED(logger, "Uniform Mission Space started.");
}

int main(int argc, char** argv)
{
	ROS_INFO_NAMED(logger, "Starting Uniform Mission Space ...");

	UniformSpace::UniformMissionSpace* ums = new UniformSpace::UniformMissionSpace(argc, argv);

	ROS_INFO_NAMED(logger, "Uniform Mission Space started.");

	std::thread t (
		[](UniformSpace::UniformMissionSpace* ums)
		{
			ums->Start();
		}, ums);

	t.detach();

	ros::spin();

	ROS_INFO_NAMED(logger, "Uniform Mission Space terminated.");
	return 0;
}

namespace UniformSpace
{
	void UniformMissionSpace::initialize(int argc, char** argv)
	{
		ROS_INFO_NAMED(logger, "Initializing Uniform Mission Space...");

		const string const_node_name = "UniformSpace";
		string drone_name;
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
			qualified_node_name = "UniformSpace" + instance_name + "_" + drone_name;

			ros::init(argc, argv, qualified_node_name);
		}
		else
		{
			ROS_INFO_NAMED(logger, "using node ros parameters.");

			ros::init(argc, argv, const_node_name);

			qualified_node_name = ros::this_node::getName();
			ros::param::get(qualified_node_name + "/drone", drone_name);
			ros::param::get(qualified_node_name + "/instance", instance_name);

			ROS_INFO_NAMED(logger, "drone_name: %s, instance_name: %s", drone_name.c_str(), instance_name.c_str());
		}

		InitializeApi(drone_name);

		ROS_INFO_NAMED(logger, "Uniform Mission Space initialized.");
	}

	void UniformMissionSpace::Start()
	{
		string input;
		string option;
		bool result = true;

		do
		{
			cout << "\nSpecify Action:\n";
			getline(cin, input);
			result = call_action(input);
		} while (result);
	}

	UniformMissionSpace::UniformMissionSpace(int argc, char** argv)
	{
		initialize(argc, argv);
	}

	bool UniformMissionSpace::call_action(string inputLine)
	{
		cout << "Calling " << inputLine << "\n";

		vector<string>* parts = splitString(inputLine);

		string drone = handleExt(parts);
		string command = parts->at(0);
		parts->erase(parts->begin());

		return handle_command(drone, command, *parts);
	}

	bool UniformMissionSpace::handle_command(string drone, string command, vector<string> parts)
	{
		if (command == "quit")
		{
			return false;
		}
		else if (command == "get")
		{
			handleGet(drone, command, parts);
			ROS_INFO_NAMED(logger, "GET handeled.", true);
		}
		else if (command == "arm")
		{
			Arm(drone);
			
			ROS_INFO_NAMED(logger, "Goal sent: %b", true);
		}
		else if (command == "disarm")
		{
			Disarm(drone);
			
			ROS_INFO_NAMED(logger, "Goal sent: %b", false);
		}
		else if (command == "takeoff")
		{
			handleTakeOff(drone, command, parts);

			ROS_INFO_NAMED(logger, "Goal sent: %d", 5);
		}
		else if (command == "orbit")
		{
			handleOrbit(drone, command, parts);
			
			ROS_INFO_NAMED(logger, "Goal sent: %d", 5);
		}
		/* else if (command == "move1")
		{
			if (isExtern)
				_moving_action_ext->MoveToLocalAbsolut(15, -65, 50);
			else
				_moving_action->MoveToLocalAbsolut(15, -65, 50);

			ROS_INFO_NAMED(logger, "move1");
			
		} */
		else if (command == "xyz")
		{
			handleMoveTo(drone, command, parts);

			ROS_INFO_NAMED(logger, "xyz");
		}
		else if (command == "x")
		{
			handleMoveTo(drone, command, parts);

			ROS_INFO_NAMED(logger, "x");
		}
		else if (command == "y")
		{
			handleMoveTo(drone, command, parts);

			ROS_INFO_NAMED(logger, "y");
		}
		else if (command == "z")
		{
			handleMoveTo(drone, command, parts);

			ROS_INFO_NAMED(logger, "z");
		}
		else if (command == "xyzr")
		{
			handleMoveTo(drone, command, parts);

			ROS_INFO_NAMED(logger, "xyzr");
		}
		else if (command == "xr")
		{
			handleMoveTo(drone, command, parts);

			ROS_INFO_NAMED(logger, "xr");
		}
		else if (command == "yr")
		{
			handleMoveTo(drone, command, parts);

			ROS_INFO_NAMED(logger, "yr");
		}
		else if (command == "zr")
		{
			handleMoveTo(drone, command, parts);

			ROS_INFO_NAMED(logger, "zr");
		}
		else if (command == "headonx")
		{
			handleMoveTo(drone, command, parts);

			ROS_INFO_NAMED(logger, "headonx");
		}
		else if (command == "headony")
		{
			handleMoveTo(drone, command, parts);
			
			ROS_INFO_NAMED(logger, "headony");
		}
		else if (command == "headonz")
		{
			handleMoveTo(drone, command, parts);
			
			ROS_INFO_NAMED(logger, "headonz");
		}
		else if (command == "headon")
		{
			handleMoveTo(drone, command, parts);

			ROS_INFO_NAMED(logger, "headon");
		}
		else if (command == "headoff")
		{
			handleMoveTo(drone, command, parts);	

			ROS_INFO_NAMED(logger, "headoff");
		}
		else if (command == "land")
		{
			Land(drone);
			ROS_INFO_NAMED(logger, "Goal sent: %b", true);
		}
		/* else if (command == "d")
		{
			ROS_INFO_NAMED(logger, "d");
			handleDebug(inputLine);
		} */
		else if (command == "debug2")
		{
			ROS_INFO_NAMED(logger, "debug2");
		}
		else if (command == "dummy1")
		{
			handleDummy(drone, command, parts);
		}
		else if (command == "dummy2")
		{
			handleDummy(drone, command, parts);
		}
		else if (command == "dummy3")
		{
			handleDummy(drone, command, parts);
		}
		else if (command == "dummy3")
		{
			handleDummy(drone, command, parts);
		}
		else
		{
			ROS_INFO_NAMED(logger, "Action unspecified.\n");
		}

		return true;
	}

	vector<string>* UniformMissionSpace::splitString(string line, string delimiter)
	{
		vector<string>* chunks = new vector<string>();
		int i = 0;

		while ((i = line.find(delimiter)) != string::npos)
		{
			string arg = line.substr(0, i);
			chunks->push_back(arg);
			line.erase(0, i + delimiter.length());
		}

		chunks->push_back(line);

		return chunks;
	}

	string UniformMissionSpace::handleExt(vector<string>* parts)
	{
		string drone;
		string first = parts->at(0);

		if (first == "ext")
		{
			drone = parts->at(1);
			parts->erase(parts->begin() + 1);
			parts->erase(parts->begin());
		}
		else
		{
			drone = _drone_name;
		}

		/* string drone = arguments.at(0);
		string action = arguments.at(1);
		string action_param1;
		string action_param2;
		string action_param3;
		string action_param4;

		if (arguments.size() == 3) {
			action_param1 = arguments.at(2);
		}
		if (arguments.size() == 4) {
			action_param2 = arguments.at(3);
		}
		if (arguments.size() == 5) {
			action_param3 = arguments.at(4);
		}
		if (arguments.size() == 6) {
			action_param4 = arguments.at(5);
		}

		if (action == "arm")
		{
			_arming_action_ext = new UniformSpace::UniformArmingAction(drone, ARMING_ACTION_NAME);
			ArmExt();
			ROS_INFO_NAMED(logger, "%s > Goal sent: %b", drone, true);
		} */

		return drone;	
	}

	void UniformMissionSpace::handleGet(string drone, string command, vector<string> arguments)
	{
		string arg1 = arguments.at(0);

		if (arg1 == "x")
		{
			ROS_INFO_NAMED(logger, "GETTING x ...\n");
			double x = X(drone);
			cout << "X request: X: " << x << "\n";
		}

		if (arg1 == "y")
		{
			ROS_INFO_NAMED(logger, "GETTING y ...\n");
			double y = Y(drone);
			cout << "Y request: Y: " << y << "\n";
		}

		if (arg1 == "z")
		{
			ROS_INFO_NAMED(logger, "GETTING z ...\n");
			double z = Z(drone);
			cout << "Z request: Z: " << z << "\n";
		}

		if (arg1 == "xyz")
		{
			ROS_INFO_NAMED(logger, "GETTING xyz ...\n");

			geometry_msgs::PoseStamped result;

			_position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);

			/* if (isExtern)
				result = _position_broker_ext->RequestXYZ();
			else
				result = _position_broker->RequestXYZ(); */

			result = _position_broker->RequestXYZ();

			cout << "XYZ request: X: " << result.pose.position.x << ", Y: " << result.pose.position.y << ", Z:" << result.pose.position.z;
		}

		if (arg1 == "xyz->")
		{
			ROS_INFO_NAMED(logger, "STARTING xyz stream ...\n");

			_position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);

			/* if (isExtern)
				_position_broker_ext->StartStreamXYZ();
			else
				_position_broker->StartStreamXYZ(); */

			_position_broker->StartStreamXYZ();
		}

		if (arg1 == "->xyz")
		{
			ROS_INFO_NAMED(logger, "GETTING xyz from stream ...\n");

			geometry_msgs::PoseStamped result;

			_position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);

			/* if (isExtern)
				result = _position_broker_ext->GetXYZFromStream();
			else
				result = _position_broker->GetXYZFromStream(); */

			result = _position_broker->GetXYZFromStream();

			cout << "XYZ from stream: X: " << result.pose.position.x << ", Y: " << result.pose.position.y << ", Z:" << result.pose.position.z;
		}

		if (arg1 == "xyz.")
		{
			ROS_INFO_NAMED(logger, "STOPPING xyz stream ...\n");

			_position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);

			/* if (isExtern)
				_position_broker_ext->StopStreamXYZ();
			else
				_position_broker->StopStreamXYZ(); */

			_position_broker->StopStreamXYZ();
		}

		if (arg1 == "lla")
		{
			ROS_INFO_NAMED(logger, "GETTING lla ...\n");

			geographic_msgs::GeoPoseStamped result;

			_position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);

			/* if (isExtern)
				result = _position_broker_ext->RequestLLA();
			else
				result = _position_broker->RequestLLA(); */

			result = _position_broker->RequestLLA();

			cout << "LLA request: LONG: " << result.pose.position.longitude << ", LAT: " << result.pose.position.latitude << ", ALT:" << result.pose.position.altitude;
		}

		if (arg1 == "lla->")
		{
			ROS_INFO_NAMED(logger, "STARTING lla stream...\n");

			_position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);

			/* if (isExtern)
				_position_broker_ext->StartStreamLLA();
			else
				_position_broker->StartStreamLLA(); */

			_position_broker->StartStreamLLA();
		}

		if (arg1 == "->lla")
		{
			ROS_INFO_NAMED(logger, "GETTING lla from stream ...\n");

			geographic_msgs::GeoPoseStamped result;

			_position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);

			/* if (isExtern)
				result = _position_broker_ext->GetLLAFromStream();
			else
				result = _position_broker->GetLLAFromStream(); */

			result = _position_broker->GetLLAFromStream();

			cout << "LLA from stream: LONG: " << result.pose.position.longitude << ", LAT: " << result.pose.position.latitude << ", ALT:" << result.pose.position.altitude;
		}

		if (arg1 == "lla.")
		{
			ROS_INFO_NAMED(logger, "StOPPING lla stream...\n");

			_position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);

			/* if (isExtern)
				_position_broker_ext->StopStreamLLA();
			else
				_position_broker->StopStreamLLA(); */

			_position_broker->StopStreamLLA();
		}
	}

	void UniformMissionSpace::handleTakeOff(string drone, string command, vector<string> arguments)
	{
		if (arguments.size() == 0)
			/* if (isExtern)
				_takeoff_action_ext->Trigger(2.5);
			else
				_takeoff_action->Trigger(2.5); */
				TakeOff(drone);
		else
		{
			double height = stof(arguments.at(0));

			/* if (isExtern)
				_takeoff_action_ext->Trigger(height);
			else
				_takeoff_action->Trigger(height); */

			TakeOff(drone, height);
		}
	}

	void UniformMissionSpace::handleOrbit(string drone, string command, vector<string> arguments)
	{
		if (arguments.size() == 0)

			/* if (isExtern)
				_takeoff_action_ext->Trigger(5);
			else
				_takeoff_action->Trigger(5); */

			TakeOff(drone, 5);
		else
		{
			double radius = stof(arguments.at(0));

			if (radius != 0)
			{
				/* if (isExtern)
					_orbit_action_ext->StartOrbit(radius);
				else
					_orbit_action->StartOrbit(radius); */

				StartOrbit(drone, radius);
			}
			else
			{
				/* if (isExtern)
					_orbit_action_ext->StopOrbit();
				else
					_orbit_action->StopOrbit(); */

				StopOrbit(drone);
			}
		}
	}

	void UniformMissionSpace::handleDummy(string drone, string command, vector<string> arguments)
	{
		if (arguments.size() == 0)
		{
			ROS_INFO_NAMED(logger, "Dummy wait for %d sec.", 10);

			triggerDummy(drone, 1, 10);
		}
		else
		{
			double duration = stof(arguments.at(0));
			ROS_INFO_NAMED(logger, "Dummy wait for %d sec.", duration);

			triggerDummy(drone, 1, duration);
		}
	}

	void UniformMissionSpace::triggerDummy(string drone, int dummy, int duration)
	{
		if (dummy == 1)
			/* if (isExtern)
				_dummy1_action_ext->Trigger(duration);
			else
				_dummy1_action->Trigger(duration); */

			_dummy1_action->Trigger(duration);
		if (dummy == 2)
			/* if (isExtern)
				_dummy2_action_ext->Trigger(duration);
			else
				_dummy2_action->Trigger(duration); */
			
			_dummy2_action->Trigger(duration);
		if (dummy == 3)
			/* if (isExtern)
				_dummy3_action_ext->Trigger(duration);
			else
				_dummy3_action->Trigger(duration); */

			_dummy3_action->Trigger(duration);
	}

	void UniformMissionSpace::handleMoveTo(string drone, string command, vector<string> arguments)
	{
		double value, y, z;

		ROS_INFO_NAMED(logger, "command: %s", command);

		if (arguments.size() >= 1)
		{
			string s = arguments.at(0);
			value = stof(arguments.at(0));
			ROS_INFO_NAMED(logger, "value: %f", value);
		}

		if (arguments.size() >= 2)
		{
			y = stof(arguments.at(1));
			ROS_INFO_NAMED(logger, "y: %f", y);	
		}
			
		if (arguments.size() >= 3)
		{
			z = stof(arguments.at(2));
			ROS_INFO_NAMED(logger, "z: %f", z);
		}
			
		if (command == "xyz")
			/* if (isExtern)
				_moving_action_ext->MoveToLocalAbsolut(value, y, z);
			else
				_moving_action->MoveToLocalAbsolut(value, y, z); */

			FlyToLocalPoint(drone, value, y, z);

		if (command == "x")
			/* if (isExtern)
				_moving_action_ext->MoveToLocalAbsolut(value, NAN, NAN);
			else
				_moving_action->MoveToLocalAbsolut(value, NAN, NAN); */

			FlyToX(drone, value);
			
		if (command == "y")
			/* if (isExtern)
				_moving_action_ext->MoveToLocalAbsolut(NAN, value, NAN);
			else
				_moving_action->MoveToLocalAbsolut(NAN, value, NAN); */

			FlyToY(drone, value);

		if (command == "z")
			/* if (isExtern)
				_moving_action_ext->MoveToLocalAbsolut(NAN, NAN, value);
			else
				_moving_action->MoveToLocalAbsolut(NAN, NAN, value); */

			FlyToZ(drone, value);

		if (command == "xyzr")
			/* if (isExtern)
				_moving_action_ext->MoveToLocalRelative(value, y, z);
			else
				_moving_action->MoveToLocalRelative(value, y, z); */

			FlyByLocalDistance(drone, value, y, z);

		if (command == "xr")
			/* if (isExtern)
				_moving_action_ext->MoveToLocalRelative(value, NAN, NAN);
			else
				_moving_action->MoveToLocalRelative(value, NAN, NAN); */

			FlyByX(drone, value);
			
		if (command == "yr")
			/* if (isExtern)
				_moving_action_ext->MoveToLocalRelative(NAN, value, NAN);
			else
				_moving_action->MoveToLocalRelative(NAN, value, NAN); */

			FlyByY(drone, value);

		if (command == "zr")
			/* if (isExtern)
				_moving_action_ext->MoveToLocalRelative(NAN, NAN, value);
			else
				_moving_action->MoveToLocalRelative(NAN, NAN, value); */

			FlyByZ(drone, value);

		if (command == "headon")
			/* if (isExtern)
				_moving_action_ext->HeadTowardsOn(value, y, z);
			else
				_moving_action->HeadTowardsOn(value, y, z); */

			HeadToXYZ(drone, value, y, z);

		if (command == "headonx")
			/* if (isExtern)
				_moving_action_ext->HeadTowardsOn(value, NAN, NAN);
			else
				_moving_action->HeadTowardsOn(value, NAN, NAN); */

			HeadToX(drone, value);

		if (command == "headony")
			/* if (isExtern)
				_moving_action_ext->HeadTowardsOn(NAN, value, NAN);
			else
				_moving_action->HeadTowardsOn(NAN, value, NAN); */

			HeadToY(drone, value);

		if (command == "headonz")
			/* if (isExtern)
				_moving_action_ext->HeadTowardsOn(NAN, NAN, value);
			else
				_moving_action->HeadTowardsOn(NAN, NAN, value); */

			HeadToZ(drone, value);

		if (command == "headoff")
			/* if (isExtern)
				_moving_action_ext->HeadTowardsOff();
			else
				_moving_action->HeadTowardsOff(); */

			StopHeading(drone);
	}

	void UniformMissionSpace::handleDebug(string line)
	{
		vector<string>* arguments = splitString(line, " ");

		string arg = arguments->at(1);

		/* if (isExtern)
			_debugging_action_ext->Trigger(arg);
		else
			_debugging_action->Trigger(arg); */
	}
};
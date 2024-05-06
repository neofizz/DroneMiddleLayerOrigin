#include <ros/ros.h>
#include <unicode/format.h>
#include <iostream>
#include <string>
#include <actionlib/server/simple_action_server.h>

using namespace std;

namespace UniformSpace
{
	class UniformMissionSpace
	{
		private:

			vector<string>* splitString(string line, string delimiter = " ");

		protected:

		public:

			UniformMissionSpace(int argc, char** argv);

			void initialize(int argc, char** argv);

            bool call_action(string action);
			
			bool handle_command(string drone, string command, vector<string> parts);

            void Start();

			string handleExt(vector<string>* parts);

			void handleGet(string drone, string command, vector<string> args);

			void handleTakeOff(string drone, string command, vector<string> args);

			void handleOrbit(string drone, string command, vector<string> args);

			void handleMoveTo(string drone, string command, vector<string> args);
			
			void handleDebug(string line);

			void handleDummy(string drone, string command, vector<string> args);

			void triggerDummy(string drone, int dummy, int duration);
	};
}

void CreateAndInitUniformSpace(char* localization_mode, char* droneName, char* instanceName);
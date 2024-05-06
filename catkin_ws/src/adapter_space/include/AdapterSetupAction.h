#include <adapter_space/SetupAction.h>
#include "AdapterPositionBroker.h"
#include "AdapterSetFlightModeAction.h"

namespace AdapterSpace
{
    class AdapterSetupAction : protected AdapterActionBase
    {
        protected:

            actionlib::SimpleActionServer<adapter_space::SetupAction>* action_server;
			actionlib::SimpleActionClient<adapter_space::SetupAction>* action_client;

			AdapterBrokerSpace::AdapterPositionBroker* position_broker;
			AdapterSetFlightModeAction* mode_action;

            void executeAdapterSetupActionCallback(const adapter_space::SetupGoalConstPtr& goal);
			adapter_space::SetupResultConstPtr SendGoal(adapter_space::SetupGoal goal);

            const string TOPIC_NAME_SETPOINT_GLOBAL = "/mavros/setpoint_position/global";
            ros::Publisher setPointGlobalTopicPublisher;
            ros::Rate rate = ros::Rate(20.0);

            void initOffboard();

        public:

            AdapterSetupAction(string drone_name, string name,
                AdapterBrokerSpace::AdapterPositionBroker* broker, AdapterSetFlightModeAction* modeAction);
            void SendInitOffboard();
            void Start();
    };
}
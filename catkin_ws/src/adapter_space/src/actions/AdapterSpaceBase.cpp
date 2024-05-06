#include "AdapterSpaceBase.h"

namespace AdapterSpace
{
    AdapterSpaceBase::AdapterSpaceBase(string droneName, string _name, string type)
    {
        drone_name = droneName;

        name = _name;
		qualified_name = drone_name + "_" + name;
		full_name = "Adapter " + name + " " + type;
		
		logger = "AdapterLogger" + name;
		debug_logger = "AdapterDebugLogger" + name;

		cancel_topic = name + "/cancel";

        SpecificOutboundGlobalPositionTopicName = drone_name + GeneralOutboundGlobalPositionTopicName;
		SpecificOutboundLocalPositionTopicName = drone_name + GeneralOutboundLocalPositionTopicName;
		SpecificInboundGlobalPositionTopicName = drone_name + GeneralInboundGlobalPositionTopicName;
		SpecificInboundLocalPositionTopicName = drone_name + GeneralInboundLocalPositionTopicName;
    }
}
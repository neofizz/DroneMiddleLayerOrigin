#include "UniformBrokerBase.h"

namespace UniformSpace
{
	UniformBrokerBase::UniformBrokerBase(string droneName, string brokerName)
	{
		broker_name = brokerName;
		drone_name = droneName;
		full_broker_name = logger = get_full_brokername(brokerName);
		logger = "UniformLogger" + broker_name;
		qualified_broker_name = drone_name + "_" + broker_name;
	}

	string UniformBrokerBase::get_full_brokername(string name)
	{
		return "Uniform " + name + " Broker";
	}
}
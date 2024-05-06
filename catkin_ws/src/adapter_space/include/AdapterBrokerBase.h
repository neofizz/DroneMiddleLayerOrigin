#ifndef ADAPTER_BROKER_BASE_H
#define ADAPTER_BROKER_BASE_H

//#include <ros/ros.h>
//#include <string>
#include "AdapterSpaceBase.h"

using namespace std;

namespace AdapterBrokerSpace
{
	class AdapterBrokerBase : protected AdapterSpace::AdapterSpaceBase
	{
		protected:

		public:

			AdapterBrokerBase(string drone_name, string name);
	};
}

#endif // ADAPTER_BROKER_BASE_H
#include "UniformActionBase.h"

namespace UniformSpace {

	UniformActionBase::UniformActionBase(string droneName, string actionName)
	{
		drone_name = droneName;
		action_name = actionName;
		full_action_name = get_full_actionname(actionName);
		qualified_action_name = drone_name + "_" + action_name;

		logger = "UniformLogger" + action_name;
	}

	string UniformActionBase::get_full_actionname(string name)
	{
		return "Uniform " + name + " Action";
	}
}
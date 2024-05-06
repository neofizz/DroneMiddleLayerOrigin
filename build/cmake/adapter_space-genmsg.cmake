# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "adapter_space: 84 messages, 0 services")

set(MSG_I_FLAGS "-Iadapter_space:/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeographic_msgs:/opt/ros/noetic/share/geographic_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Iuuid_msgs:/opt/ros/noetic/share/uuid_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(adapter_space_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffAction.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffAction.msg" "adapter_space/TakeOffGoal:actionlib_msgs/GoalStatus:std_msgs/Header:adapter_space/TakeOffFeedback:adapter_space/TakeOffResult:actionlib_msgs/GoalID:adapter_space/TakeOffActionResult:adapter_space/TakeOffActionGoal:adapter_space/TakeOffActionFeedback"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg" "adapter_space/TakeOffGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg" "actionlib_msgs/GoalStatus:adapter_space/TakeOffResult:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg" "adapter_space/TakeOffFeedback:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingAction.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingAction.msg" "std_msgs/Header:adapter_space/ArmingActionFeedback:adapter_space/ArmingFeedback:actionlib_msgs/GoalID:adapter_space/ArmingGoal:actionlib_msgs/GoalStatus:adapter_space/ArmingActionGoal:adapter_space/ArmingResult:adapter_space/ArmingActionResult"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:adapter_space/ArmingGoal"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:adapter_space/ArmingResult"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg" "actionlib_msgs/GoalStatus:adapter_space/ArmingFeedback:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionAction.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionAction.msg" "geographic_msgs/GeoPose:geometry_msgs/Quaternion:std_msgs/Header:adapter_space/BPositionFeedback:adapter_space/BPositionActionFeedback:adapter_space/BPositionResult:geometry_msgs/Point:adapter_space/BPositionActionResult:actionlib_msgs/GoalID:adapter_space/BPositionActionGoal:adapter_space/BPositionGoal:actionlib_msgs/GoalStatus:geometry_msgs/Pose:geographic_msgs/GeoPoint"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg" "adapter_space/BPositionGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg" "geographic_msgs/GeoPose:geometry_msgs/Quaternion:std_msgs/Header:adapter_space/BPositionResult:geometry_msgs/Point:actionlib_msgs/GoalID:geometry_msgs/Pose:actionlib_msgs/GoalStatus:geographic_msgs/GeoPoint"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:adapter_space/BPositionFeedback"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:geographic_msgs/GeoPose:geographic_msgs/GeoPoint"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingAction.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingAction.msg" "adapter_space/MovingFeedback:std_msgs/Header:adapter_space/MovingActionFeedback:adapter_space/MovingResult:adapter_space/MovingActionResult:actionlib_msgs/GoalID:adapter_space/MovingActionGoal:actionlib_msgs/GoalStatus:adapter_space/MovingGoal"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:adapter_space/MovingGoal"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg" "adapter_space/MovingResult:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:adapter_space/MovingFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeAction.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeAction.msg" "adapter_space/SetFlightModeActionResult:std_msgs/Header:adapter_space/SetFlightModeFeedback:adapter_space/SetFlightModeGoal:adapter_space/SetFlightModeActionFeedback:actionlib_msgs/GoalID:adapter_space/SetFlightModeResult:actionlib_msgs/GoalStatus:adapter_space/SetFlightModeActionGoal"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg" "actionlib_msgs/GoalID:adapter_space/SetFlightModeGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:adapter_space/SetFlightModeResult"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg" "actionlib_msgs/GoalStatus:adapter_space/SetFlightModeFeedback:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusAction.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusAction.msg" "adapter_space/BStatusActionFeedback:adapter_space/BStatusActionGoal:std_msgs/Header:adapter_space/BStatusResult:adapter_space/BStatusGoal:actionlib_msgs/GoalID:adapter_space/BStatusFeedback:actionlib_msgs/GoalStatus:adapter_space/BStatusActionResult"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg" "adapter_space/BStatusGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg" "adapter_space/BStatusResult:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:adapter_space/BStatusFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandAction.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandAction.msg" "adapter_space/LandFeedback:std_msgs/Header:adapter_space/LandActionGoal:adapter_space/LandActionFeedback:adapter_space/LandResult:actionlib_msgs/GoalID:adapter_space/LandActionResult:actionlib_msgs/GoalStatus:adapter_space/LandGoal"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg" "adapter_space/LandGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg" "actionlib_msgs/GoalStatus:adapter_space/LandResult:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg" "actionlib_msgs/GoalStatus:adapter_space/LandFeedback:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugAction.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugAction.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:adapter_space/DebugFeedback:adapter_space/DebugActionGoal:adapter_space/DebugActionResult:adapter_space/DebugActionFeedback:actionlib_msgs/GoalID:adapter_space/DebugGoal:adapter_space/DebugResult"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg" "adapter_space/DebugGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg" "actionlib_msgs/GoalStatus:adapter_space/DebugResult:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:adapter_space/DebugFeedback"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupAction.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupAction.msg" "adapter_space/SetupGoal:adapter_space/SetupActionFeedback:std_msgs/Header:adapter_space/SetupActionResult:adapter_space/SetupResult:adapter_space/SetupActionGoal:adapter_space/SetupFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg" "adapter_space/SetupGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg" "actionlib_msgs/GoalStatus:adapter_space/SetupResult:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg" "actionlib_msgs/GoalStatus:adapter_space/SetupFeedback:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Action.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Action.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:adapter_space/Dummy1ActionResult:adapter_space/Dummy1Feedback:actionlib_msgs/GoalID:adapter_space/Dummy1ActionFeedback:adapter_space/Dummy1ActionGoal:adapter_space/Dummy1Goal:adapter_space/Dummy1Result"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg" "adapter_space/Dummy1Goal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg" "actionlib_msgs/GoalStatus:adapter_space/Dummy1Result:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:adapter_space/Dummy1Feedback"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Action.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Action.msg" "std_msgs/Header:adapter_space/Dummy2ActionGoal:adapter_space/Dummy2Goal:adapter_space/Dummy2ActionResult:adapter_space/Dummy2Result:adapter_space/Dummy2ActionFeedback:adapter_space/Dummy2Feedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg" "adapter_space/Dummy2Goal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:adapter_space/Dummy2Result:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg" "actionlib_msgs/GoalStatus:adapter_space/Dummy2Feedback:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Action.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Action.msg" "adapter_space/Dummy3ActionFeedback:adapter_space/Dummy3ActionResult:std_msgs/Header:adapter_space/Dummy3ActionGoal:actionlib_msgs/GoalID:adapter_space/Dummy3Result:actionlib_msgs/GoalStatus:adapter_space/Dummy3Goal:adapter_space/Dummy3Feedback"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:adapter_space/Dummy3Goal"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg" "actionlib_msgs/GoalStatus:adapter_space/Dummy3Result:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:adapter_space/Dummy3Feedback"
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg" ""
)

get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg" NAME_WE)
add_custom_target(_adapter_space_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adapter_space" "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Action.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Action.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Action.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)
_generate_msg_cpp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
)

### Generating Services

### Generating Module File
_generate_module_cpp(adapter_space
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(adapter_space_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(adapter_space_generate_messages adapter_space_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Action.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Action.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Action.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_cpp _adapter_space_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(adapter_space_gencpp)
add_dependencies(adapter_space_gencpp adapter_space_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS adapter_space_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Action.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Action.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Action.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)
_generate_msg_eus(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
)

### Generating Services

### Generating Module File
_generate_module_eus(adapter_space
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(adapter_space_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(adapter_space_generate_messages adapter_space_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Action.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Action.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Action.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_eus _adapter_space_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(adapter_space_geneus)
add_dependencies(adapter_space_geneus adapter_space_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS adapter_space_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Action.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Action.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Action.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)
_generate_msg_lisp(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
)

### Generating Services

### Generating Module File
_generate_module_lisp(adapter_space
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(adapter_space_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(adapter_space_generate_messages adapter_space_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Action.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Action.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Action.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_lisp _adapter_space_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(adapter_space_genlisp)
add_dependencies(adapter_space_genlisp adapter_space_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS adapter_space_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Action.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Action.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Action.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)
_generate_msg_nodejs(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
)

### Generating Services

### Generating Module File
_generate_module_nodejs(adapter_space
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(adapter_space_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(adapter_space_generate_messages adapter_space_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Action.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Action.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Action.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_nodejs _adapter_space_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(adapter_space_gennodejs)
add_dependencies(adapter_space_gennodejs adapter_space_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS adapter_space_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/noetic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupAction.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Action.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Action.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Action.msg"
  "${MSG_I_FLAGS}"
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)
_generate_msg_py(adapter_space
  "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
)

### Generating Services

### Generating Module File
_generate_module_py(adapter_space
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(adapter_space_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(adapter_space_generate_messages adapter_space_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupAction.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Action.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Action.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Action.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg" NAME_WE)
add_dependencies(adapter_space_generate_messages_py _adapter_space_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(adapter_space_genpy)
add_dependencies(adapter_space_genpy adapter_space_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS adapter_space_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adapter_space
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(adapter_space_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(adapter_space_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geographic_msgs_generate_messages_cpp)
  add_dependencies(adapter_space_generate_messages_cpp geographic_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(adapter_space_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(adapter_space_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adapter_space
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(adapter_space_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(adapter_space_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geographic_msgs_generate_messages_eus)
  add_dependencies(adapter_space_generate_messages_eus geographic_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(adapter_space_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(adapter_space_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adapter_space
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(adapter_space_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(adapter_space_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geographic_msgs_generate_messages_lisp)
  add_dependencies(adapter_space_generate_messages_lisp geographic_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(adapter_space_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(adapter_space_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adapter_space
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(adapter_space_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(adapter_space_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geographic_msgs_generate_messages_nodejs)
  add_dependencies(adapter_space_generate_messages_nodejs geographic_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(adapter_space_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(adapter_space_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adapter_space
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(adapter_space_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(adapter_space_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geographic_msgs_generate_messages_py)
  add_dependencies(adapter_space_generate_messages_py geographic_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(adapter_space_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(adapter_space_generate_messages_py sensor_msgs_generate_messages_py)
endif()

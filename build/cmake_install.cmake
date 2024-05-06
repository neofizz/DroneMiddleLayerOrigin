# Install script for directory: /home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/catkin_ws/src/adapter_space

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE PROGRAM FILES "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE PROGRAM FILES "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/setup.bash;/usr/local/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/catkin_generated/installspace/setup.bash"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/setup.sh;/usr/local/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/catkin_generated/installspace/setup.sh"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/setup.zsh;/usr/local/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/catkin_generated/installspace/setup.zsh"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE FILE FILES "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space/actions" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/catkin_ws/src/adapter_space/actions/TakeOff.action"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/catkin_ws/src/adapter_space/actions/Arming.action"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/catkin_ws/src/adapter_space/actions/BPosition.action"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/catkin_ws/src/adapter_space/actions/Moving.action"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/catkin_ws/src/adapter_space/actions/SetFlightMode.action"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/catkin_ws/src/adapter_space/actions/BStatus.action"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/catkin_ws/src/adapter_space/actions/Land.action"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/catkin_ws/src/adapter_space/actions/Debug.action"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/catkin_ws/src/adapter_space/actions/Setup.action"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/catkin_ws/src/adapter_space/actions/Dummy1.action"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/catkin_ws/src/adapter_space/actions/Dummy2.action"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/catkin_ws/src/adapter_space/actions/Dummy3.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space/msg" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffAction.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffActionFeedback.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/TakeOffFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space/msg" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingAction.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingActionFeedback.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/ArmingFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space/msg" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionAction.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionActionFeedback.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BPositionFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space/msg" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingAction.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingActionFeedback.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/MovingFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space/msg" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeAction.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeActionFeedback.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetFlightModeFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space/msg" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusAction.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusActionFeedback.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/BStatusFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space/msg" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandAction.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandActionFeedback.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/LandFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space/msg" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugAction.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugActionFeedback.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/DebugFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space/msg" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupAction.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupActionFeedback.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/SetupFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space/msg" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Action.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1ActionFeedback.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Goal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Result.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy1Feedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space/msg" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Action.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2ActionFeedback.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Goal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Result.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy2Feedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space/msg" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Action.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionGoal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionResult.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3ActionFeedback.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Goal.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Result.msg"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/adapter_space/msg/Dummy3Feedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space/cmake" TYPE FILE FILES "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/catkin_generated/installspace/adapter_space-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/include/adapter_space")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/roseus/ros/adapter_space")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/common-lisp/ros/adapter_space")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/share/gennodejs/ros/adapter_space")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/lib/python3/dist-packages/adapter_space")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/devel/lib/python3/dist-packages/adapter_space")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/catkin_generated/installspace/adapter_space.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space/cmake" TYPE FILE FILES "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/catkin_generated/installspace/adapter_space-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space/cmake" TYPE FILE FILES
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/catkin_generated/installspace/adapter_spaceConfig.cmake"
    "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/catkin_generated/installspace/adapter_spaceConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/adapter_space" TYPE FILE FILES "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/catkin_ws/src/adapter_space/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/fizzpin/Home/workspaces/DroneMiddleLayer/DroneMiddleLayer/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

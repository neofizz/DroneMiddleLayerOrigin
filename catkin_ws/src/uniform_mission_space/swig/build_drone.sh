#! /bin/bash

MISSION_NAME=$1
EAMOS_DIR=$HOME/EAMOS
EAMOSWS_DIR=$HOME/EAMOS_ws
DEPLOYMENT_DIR=$EAMOSWS_DIR/$MISSION_NAME/MissionDeployment

echo "swigging DroneInterface.i"
swig -go -c++ -intgosize 64 DroneInterface.i

for file in `ls ../../DroneMission/Missions`; do

    echo $file

    original_go_mission="../../DroneMission/Missions/$file"

    drone_name=(${file//_Main_Mission.go/ })

    DRONE_DIR="$DEPLOYMENT_DIR/$drone_name"

    if [ -d $DRONE_DIR ]
        then
            echo "using existing deployment directory."
        else
            echo "creating deployment directory ..."
            mkdir -p $DRONE_DIR
    fi

    deployed_mission_file_name="${drone_name}_mission"
    deployed_drone_mission="$DRONE_DIR/$deployed_mission_file_name"

    go build -o $deployed_drone_mission ../../DroneMission/Missions/$file

    echo ............ "drone name": $drone_name
    echo ............ "deployed mission name": $deployed_mission_file_name
    echo ............ "deployed drone mission file": $deployed_drone_mission

    LIB_ADAPTER_SPACE_SO="$EAMOS_DIR/DroneMiddleLayer/catkin_ws/devel/.private/adapter_space/lib/libadapter_space.so"
    LIB_UNIFORM_MISSION_SPACE_SO="$EAMOS_DIR/DroneMiddleLayer/catkin_ws/devel/.private/uniform_mission_space/lib/libuniform_mission_space.so"
    LAUNCH_FILE="$EAMOS_DIR/GoDroneWorkspace/GoMissionEnvironment/launch_files/LAUNCH.sh"

    echo "Copying middle layer libraries"
    cp $LIB_ADAPTER_SPACE_SO $DRONE_DIR
    cp $LIB_UNIFORM_MISSION_SPACE_SO $DRONE_DIR
    cp $LAUNCH_FILE $DEPLOYMENT_DIR

    ADAPTER="$EAMOS_DIR/DroneMiddleLayer/catkin_ws/devel/.private/adapter_space/lib/adapter_space/adapter"
    UNIFORM="$EAMOS_DIR/DroneMiddleLayer/catkin_ws/devel/.private/uniform_mission_space/lib/uniform_mission_space/uniform"

    echo "copying middle layer executables"

    cp $ADAPTER $DRONE_DIR
    cp $UNIFORM $DRONE_DIR
done

cp deploy.sh $DEPLOYMENT_DIR
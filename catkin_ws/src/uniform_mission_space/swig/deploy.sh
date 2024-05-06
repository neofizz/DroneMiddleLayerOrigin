#!/bin/bash

echo "EAMOS>> Deploying ..."

REMOTE_USER=ubuntu
MISSION=$1
REMOTE_EAMOS=~/EAMOS_dep/$MISSION
INIT=$2

DRONE1_IP=$3
DRONE2_IP=$4
BASE_USER=marc
BASE_IP=$5

echo "EAMOS>> Drone 1 ..."

if [ $2 == i ]
then

ssh $REMOTE_USER@$DRONE1_IP<<EOL
    rm -r $REMOTE_EAMOS
    mkdir $REMOTE_EAMOS
EOL

scp -r Drone1 $REMOTE_USER@$DRONE1_IP:$REMOTE_EAMOS

else

cd Drone1
scp Drone1_mission $REMOTE_USER@$DRONE1_IP:$REMOTE_EAMOS/Drone1

fi

scp  LAUNCH.sh $REMOTE_USER@$DRONE1_IP:$REMOTE_EAMOS

echo "EAMOS>> Drone 1 done!"

# ---

echo "EAMOS>> Drone 2 ..."

if [ $2 == i ]
then

ssh $REMOTE_USER@$DRONE2_IP<<EOL
    rm -r $REMOTE_EAMOS
    mkdir $REMOTE_EAMOS
EOL

scp -r Drone2 $REMOTE_USER@$DRONE2_IP:$REMOTE_EAMOS

else

cd Drone2
scp Drone2_mission $REMOTE_USER@$DRONE2_IP:$REMOTE_EAMOS/Drone2

fi

scp  LAUNCH.sh $REMOTE_USER@$DRONE2_IP:$REMOTE_EAMOS

echo "EAMOS>> Drone 2 done!"

#echo "EAMOS>> Deploying GCS to BaseStation ..."

#cd ..

#if [ $2 == i ]
#then

#ssh $BASE_USER@$BASE_IP<<EOL
#    rm -r $REMOTE_EAMOS
#    mkdir $REMOTE_EAMOS
#EOL

#scp -r GCS $BASE_USER@$BASE_IP:$REMOTE_EAMOS

#else

#cd GCS
#scp GCS_mission $BASE_USER@$BASE_IP:$REMOTE_EAMOS/GCS

#fi

echo "EAMOS>> Deployment finsihed."

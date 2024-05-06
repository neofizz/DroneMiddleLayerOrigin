#include <map>
#include <UniformPositionBroker.h>
#include <UniformArmingAction.h>
#include <UniformLandAction.h>
#include <UniformMovingAction.h>
#include <UniformSetFlightModeAction.h>
#include <UniformTakeOffAction.h>
#include <UniformDebugAction.h>
#include <UniformDummy1Action.h>
#include <UniformDummy2Action.h>
#include <UniformDummy3Action.h>
#include <UniformSensorBroker.h>
#include <UniformOrbitAction.h>

string _drone_name;

UniformSpace::UniformPositionBroker* _position_broker;
UniformSpace::UniformSensorBroker* _sensor_broker;
UniformSpace::UniformArmingAction* _arming_action;
UniformSpace::UniformTakeOffAction* _takeoff_action;
UniformSpace::UniformMovingAction* _moving_action;
UniformSpace::UniformLandAction* _landing_action;
UniformSpace::UniformDebugAction* _debugging_action;
UniformSpace::UniformDummy1Action* _dummy1_action;
UniformSpace::UniformDummy2Action* _dummy2_action;
UniformSpace::UniformDummy3Action* _dummy3_action;
UniformSpace::UniformOrbitAction* _orbit_action;

UniformSpace::UniformPositionBroker* _position_broker_ext;
UniformSpace::UniformSensorBroker* _sensor_broker_ext;
UniformSpace::UniformArmingAction* _arming_action_ext;
UniformSpace::UniformTakeOffAction* _takeoff_action_ext;
UniformSpace::UniformMovingAction* _moving_action_ext;
UniformSpace::UniformLandAction* _landing_action_ext;
UniformSpace::UniformDebugAction* _debugging_action_ext;
UniformSpace::UniformDummy1Action* _dummy1_action_ext;
UniformSpace::UniformDummy2Action* _dummy2_action_ext;
UniformSpace::UniformDummy3Action* _dummy3_action_ext;
UniformSpace::UniformOrbitAction* _orbit_action_ext;

const string POSITION_BROKER_NAME = "Position";
const string SENSOR_BROKER_NAME = "Sensor";

const string TAKEOFF_ACTION_NAME = "TakeOff";
const string ARMING_ACTION_NAME = "Arm";
const string MOVING_ACTION_NAME = "Move";
const string LANDING_ACTION_NAME = "Land";
const string DEBUG_ACTION_NAME = "Debug";
const string DUMMY1_ACTION_NAME = "Dummy1";
const string DUMMY2_ACTION_NAME = "Dummy2";
const string DUMMY3_ACTION_NAME = "Dummy3";
const string ORBIT_ACTION_NAME = "Orbit";

std::map<string, std::map<string, UniformSpace::UniformActionBase*>> actions;
std::map<string, std::map<string, UniformSpace::UniformBrokerBase*>> broker;

void InitializeApi(string droneName)
{
    _drone_name = droneName;

    /* _position_broker = new UniformBrokerSpace::UniformPositionBroker(_drone_name, POSITION_BROKER_NAME);
    _sensor_broker = new UniformBrokerSpace::UniformSensorBroker(_drone_name, SENSOR_BROKER_NAME);

    _arming_action = new UniformSpace::UniformArmingAction(_drone_name, ARMING_ACTION_NAME);
    _takeoff_action = new UniformSpace::UniformTakeOffAction(_drone_name, TAKEOFF_ACTION_NAME);
    _moving_action = new UniformSpace::UniformMovingAction(_drone_name, MOVING_ACTION_NAME);
    _landing_action = new UniformSpace::UniformLandAction(_drone_name, LANDING_ACTION_NAME);
    _debugging_action = new UniformSpace::UniformDebugAction(_drone_name, DEBUG_ACTION_NAME);
    _dummy1_action = new UniformSpace::UniformDummy1Action(_drone_name, DUMMY1_ACTION_NAME);
    _dummy2_action = new UniformSpace::UniformDummy2Action(_drone_name, DUMMY2_ACTION_NAME);
    _dummy3_action = new UniformSpace::UniformDummy3Action(_drone_name, DUMMY3_ACTION_NAME);
    _orbit_action = new UniformSpace::UniformOrbitAction(_drone_name, ORBIT_ACTION_NAME); */

}

std::map<string, UniformSpace::UniformActionBase*> create_actions(string drone)
{
    std::map<string, UniformSpace::UniformActionBase*> actions;

    actions[ARMING_ACTION_NAME] = new UniformSpace::UniformArmingAction(drone, ARMING_ACTION_NAME);
    actions[TAKEOFF_ACTION_NAME] = _takeoff_action = new UniformSpace::UniformTakeOffAction(drone, TAKEOFF_ACTION_NAME);
    actions[MOVING_ACTION_NAME] = _moving_action = new UniformSpace::UniformMovingAction(drone, MOVING_ACTION_NAME);
    actions[LANDING_ACTION_NAME] = _landing_action = new UniformSpace::UniformLandAction(drone, LANDING_ACTION_NAME);
    actions[DEBUG_ACTION_NAME] = _debugging_action = new UniformSpace::UniformDebugAction(drone, DEBUG_ACTION_NAME);
    actions[DUMMY1_ACTION_NAME] = _dummy1_action = new UniformSpace::UniformDummy1Action(drone, DUMMY1_ACTION_NAME);
    actions[DUMMY2_ACTION_NAME] = _dummy2_action = new UniformSpace::UniformDummy2Action(drone, DUMMY2_ACTION_NAME);
    actions[DUMMY3_ACTION_NAME] = _dummy3_action = new UniformSpace::UniformDummy3Action(drone, DUMMY3_ACTION_NAME);
    actions[ORBIT_ACTION_NAME] = _orbit_action = new UniformSpace::UniformOrbitAction(drone, ORBIT_ACTION_NAME);

    return actions;
}

std::map<string, UniformSpace::UniformBrokerBase*> create_broker(string drone)
{
    std::map<string, UniformSpace::UniformBrokerBase*> broker;

    broker[POSITION_BROKER_NAME] = new UniformSpace::UniformPositionBroker(drone, POSITION_BROKER_NAME);
    broker[SENSOR_BROKER_NAME] = new UniformSpace::UniformSensorBroker(drone, SENSOR_BROKER_NAME);

    return broker;
}

template<typename T>
T* get_action(string drone, string name) {

    std::map<string, UniformSpace::UniformActionBase*> drone_actions;

    if (actions.count(drone)>0)
        drone_actions = actions[drone];
    else
        drone_actions = create_actions(drone);

    actions[drone] = drone_actions;

    UniformSpace::UniformActionBase* a = drone_actions[name];

    T* b = static_cast<T*>(a);

    return b;
}

template<typename T>
T* get_broker(string drone, string name) {

    std::map<string, UniformSpace::UniformBrokerBase*> drone_broker;

    if (broker.count(drone)>0)
        drone_broker = broker[drone];
    else
        drone_broker = create_broker(drone);

    broker[drone] = drone_broker;

    UniformSpace::UniformBrokerBase* a = drone_broker[name];

    T* b = static_cast<T*>(a);

    return b;
}

int StartPositionStreaming(string drone)
{
    _position_broker->StartStreamXYZ();
    _position_broker->StartStreamLLA();
    return 0;
}

int StopPositionStreaming(string drone)
{
    _position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);
    _position_broker->StopStreamXYZ();
    _position_broker->StopStreamLLA();
    return 0;
}

double X(string drone)
{
    _position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);
    return _position_broker->GetX();
}

double Y(string drone)
{
    _position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);
    return _position_broker->GetY();
}

double Z(string drone)
{
    _position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);
    return _position_broker->GetZ();
}

void XYZPosition(string drone, double *x, double *y, double *z)
{
    _position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);

    geometry_msgs::PoseStamped pose;
    
    pose = _position_broker->GetXYZ();
    
    *x = pose.pose.position.x;
    *y = pose.pose.position.y;
    *z = pose.pose.position.z;
}

double Longitude(string drone)
{
    _position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);
    return _position_broker->GetLongitude();
}

double Latittude(string drone)
{
    _position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);
    return _position_broker->GetLatitude();
}

double Altitude(string drone)
{
    _position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);
    return _position_broker->GetAltitude();
}

void LLAPosition(string drone, double *longitude, double *latitude, double *altitude)
{
    _position_broker = get_broker<UniformSpace::UniformPositionBroker>(drone, POSITION_BROKER_NAME);
    
    geographic_msgs::GeoPoseStamped pose = _position_broker->GetLLA();

    *longitude = pose.pose.position.longitude;
    *latitude = pose.pose.position.latitude;
    *altitude = pose.pose.position.altitude;
}

int Arm(string drone)
{
    _arming_action = get_action<UniformSpace::UniformArmingAction>(drone, ARMING_ACTION_NAME);

    _arming_action->Trigger(true);
    return 0;
}

int Disarm(string drone)
{
    _arming_action = get_action<UniformSpace::UniformArmingAction>(drone, ARMING_ACTION_NAME);
    _arming_action->Trigger(false);
    return 0;
}

int TakeOff(string drone)
{
    _takeoff_action = get_action<UniformSpace::UniformTakeOffAction>(drone, TAKEOFF_ACTION_NAME);
    _takeoff_action->Trigger(3);
    return 0;
}

int TakeOff(string drone, double height)
{
    _takeoff_action = get_action<UniformSpace::UniformTakeOffAction>(drone, TAKEOFF_ACTION_NAME);
    _takeoff_action->Trigger(height);
    return 0;
}

int Land(string drone)
{
    _landing_action = get_action<UniformSpace::UniformLandAction>(drone, LANDING_ACTION_NAME);
    _landing_action->Trigger();
    return 0;
}

int FlyToLocalPoint(string drone, double x, double y, double z)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
    _moving_action->MoveToLocalAbsolut(x, y, z);
    return 0;
}

int FlyToX(string drone, double x)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
     _moving_action->MoveToLocalAbsolut(x, NAN, NAN);
    return 0;
}

int FlyByX(string drone, double x)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
    _moving_action->MoveToLocalRelative(x, NAN, NAN);
    return 0;
}

int FlyToY(string drone, double y)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
     _moving_action->MoveToLocalAbsolut(NAN, y, NAN);
    return 0;
}

int FlyByY(string drone, double y)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
     _moving_action->MoveToLocalRelative(NAN, y, NAN);
    return 0;
}

int FlyToZ(string drone, double z)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
     _moving_action->MoveToLocalAbsolut(NAN, NAN, z);
    return 0;
}

int FlyByZ(string drone, double z)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
    _moving_action->MoveToLocalRelative(NAN, NAN, z);
    return 0;
}

int FlyByLocalDistance(string drone, double x, double y, double z)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
    _moving_action->MoveToLocalRelative(x, y, z);
    return 0;
}

int FlyToGlobalPoint(string drone, double longitude, double latitude, double altitude)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
    _moving_action->MoveToGlobalAbsolut(longitude, latitude, altitude);
    return 0;
}

int FlyToLongitude(string drone, double longitude)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
     _moving_action->MoveToGlobalAbsolut(longitude, NAN, NAN);
    return 0;
}

int FlyByLongitude(string drone, double longitude)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
    _moving_action->MoveToGlobalRelative(longitude, NAN, NAN);
    return 0;
}

int FlyToLatitude(string drone, double latitude)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
    _moving_action->MoveToGlobalAbsolut(NAN, latitude, NAN);
    return 0;
}

int FlyByLatitude(string drone, double latitude)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
    _moving_action->MoveToGlobalRelative(NAN, latitude, NAN);
    return 0;
}

int FlyToAltitude(string drone, double altitude)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
    _moving_action->MoveToGlobalAbsolut(NAN, NAN, altitude);
    return 0;
}

int FlyByAltitude(string drone, double altitude)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
    _moving_action->MoveToGlobalRelative(NAN, NAN, altitude);
    return 0;
}

int FlyByGlobalDistance(string drone, double longitude, double latitude, double altitude)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
    _moving_action->MoveToGlobalRelative(longitude, latitude, altitude);
    return 0;
}

int HeadToXYZ(string drone, double x, double y, double z)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
    _moving_action->HeadTowardsOn(x, y, z);
    return 0;
}

int HeadToX(string drone, double x)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
    _moving_action->HeadTowardsOn(x, NAN, NAN);
    return 0;
}

int HeadToY(string drone, double y)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
    _moving_action->HeadTowardsOn(NAN, y, NAN);
    return 0;
}

int HeadToZ(string drone, double z)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
    _moving_action->HeadTowardsOn(NAN, NAN, z);
    return 0;
}

int StopHeading(string drone)
{
    _moving_action = get_action<UniformSpace::UniformMovingAction>(drone, MOVING_ACTION_NAME);
    _moving_action->HeadTowardsOff();
    return 0;
}

int Dummy1(string drone, int max_duration)
{
    _dummy1_action = get_action<UniformSpace::UniformDummy1Action>(drone, DUMMY1_ACTION_NAME);
    _dummy1_action->Trigger(max_duration);
    return 0;
}

int Dummy2(string drone, int max_duration)
{
    _dummy2_action = get_action<UniformSpace::UniformDummy2Action>(drone, DUMMY2_ACTION_NAME);
    _dummy2_action->Trigger(max_duration);
    return 0;
}

int Dummy3(string drone, int max_duration)
{
    _dummy3_action = get_action<UniformSpace::UniformDummy3Action>(drone, DUMMY3_ACTION_NAME);
    _dummy3_action->Trigger(max_duration);
    return 0;
}

double Sensor1Value(string drone)
{
    _sensor_broker = get_broker<UniformSpace::UniformSensorBroker>(drone, SENSOR_BROKER_NAME);
    return _sensor_broker->GetSensor1Reading();
}

int StartOrbit(string drone, double radius)
{
    _orbit_action = get_action<UniformSpace::UniformOrbitAction>(drone, ORBIT_ACTION_NAME);
    _orbit_action->StartOrbit(radius);

    return 0;
}

int StopOrbit(string drone)
{
    _orbit_action = get_action<UniformSpace::UniformOrbitAction>(drone, ORBIT_ACTION_NAME);
    _orbit_action->StopOrbit();

    return 0;
}

int DoWarpMe()
{
    return 1701;
}

/* // EXTERN

int StartPositionStreamingExt()
{
    _position_broker_ext->StartStreamXYZ();
    _position_broker_ext->StartStreamLLA();
    return 0;
}

int StopPositionStreamingExt()
{
    _position_broker_ext->StopStreamXYZ();
    _position_broker_ext->StopStreamLLA();
    return 0;
}

double XExt()
{
    return _position_broker_ext->GetX();
}

double YExt()
{
    return _position_broker_ext->GetY();
}

double ZExt()
{
    return _position_broker_ext->GetZ();
}

void XYZPositionExt(double *x, double *y, double *z)
{
    geometry_msgs::PoseStamped pose = _position_broker_ext->GetXYZ();
    
    *x = pose.pose.position.x;
    *y = pose.pose.position.y;
    *z = pose.pose.position.z;
}

double LongitudeExt()
{
    return _position_broker_ext->GetLongitude();
}

double LatittudeExt()
{
    return _position_broker_ext->GetLatitude();
}

double AltitudeExt()
{
    return _position_broker_ext->GetAltitude();
}

void LLAPositionExt(double *longitude, double *latitude, double *altitude)
{
    geographic_msgs::GeoPoseStamped pose = _position_broker_ext->GetLLA();

    *longitude = pose.pose.position.longitude;
    *latitude = pose.pose.position.latitude;
    *altitude = pose.pose.position.altitude;
}

int ArmExt()
{
    _arming_action_ext->Trigger(true);
    return 0;
}

int DisarmExt()
{
    _arming_action_ext->Trigger(false);
    return 0;
}

int TakeOffExt()
{
    _takeoff_action_ext->Trigger(3);
    return 0;
}

int TakeOffExt(double height)
{
    _takeoff_action_ext->Trigger(height);
    return 0;
}

int LandExt()
{
    _landing_action_ext->Trigger();
    return 0;
}

int FlyToLocalPointExt(double x, double y, double z)
{
    _moving_action_ext->MoveToLocalAbsolut(x, y, z);
    return 0;
}

int FlyToXExt(double x)
{
     _moving_action_ext->MoveToLocalAbsolut(x, NAN, NAN);
    return 0;
}

int FlyByXExt(double x)
{
    _moving_action_ext->MoveToLocalRelative(x, NAN, NAN);
    return 0;
}

int FlyToYExt(double y)
{
     _moving_action_ext->MoveToLocalAbsolut(NAN, y, NAN);
    return 0;
}

int FlyByYExt(double y)
{
     _moving_action_ext->MoveToLocalRelative(NAN, y, NAN);
    return 0;
}

int FlyToZExt(double z)
{
     _moving_action_ext->MoveToLocalAbsolut(NAN, NAN, z);
    return 0;
}

int FlyByZExt(double z)
{
    _moving_action_ext->MoveToLocalRelative(NAN, NAN, z);
    return 0;
}

int FlyByLocalDistanceExt(double x, double y, double z)
{
    _moving_action_ext->MoveToLocalRelative(x, y, z);
    return 0;
}

int FlyToGlobalPointExt(double longitude, double latitude, double altitude)
{
    _moving_action_ext->MoveToGlobalAbsolut(longitude, latitude, altitude);
    return 0;
}

int FlyToLongitudeExt(double longitude)
{
     _moving_action_ext->MoveToGlobalAbsolut(longitude, NAN, NAN);
    return 0;
}

int FlyByLongitudeExt(double longitude)
{
    _moving_action_ext->MoveToGlobalRelative(longitude, NAN, NAN);
    return 0;
}

int FlyToLatitudeExt(double latitude)
{
    _moving_action_ext->MoveToGlobalAbsolut(NAN, latitude, NAN);
    return 0;
}

int FlyByLatitudeExt(double latitude)
{
    _moving_action_ext->MoveToGlobalRelative(NAN, latitude, NAN);
    return 0;
}

int FlyToAltitudeExt(double altitude)
{
    _moving_action_ext->MoveToGlobalAbsolut(NAN, NAN, altitude);
    return 0;
}

int FlyByAltitudeExt(double altitude)
{
    _moving_action_ext->MoveToGlobalRelative(NAN, NAN, altitude);
    return 0;
}

int FlyByGlobalDistanceExt(double longitude, double latitude, double altitude)
{
    _moving_action_ext->MoveToGlobalRelative(longitude, latitude, altitude);
    return 0;
}

int HeadToXYZExt(double x, double y, double z)
{
    _moving_action_ext->HeadTowardsOn(x, y, z);
    return 0;
}

int HeadToXExt(double x)
{
    _moving_action_ext->HeadTowardsOn(x, NAN, NAN);
    return 0;
}

int HeadToYExt(double y)
{
    _moving_action_ext->HeadTowardsOn(NAN, y, NAN);
    return 0;
}

int HeadToZExt(double z)
{
    _moving_action_ext->HeadTowardsOn(NAN, NAN, z);
    return 0;
}

int StopHeadingExt()
{
    _moving_action_ext->HeadTowardsOff();
    return 0;
}

int Dummy1Ext(int max_duration)
{
    _dummy1_action_ext->Trigger(max_duration);
    return 0;
}

int Dummy2Ext(int max_duration)
{
    _dummy2_action_ext->Trigger(max_duration);
    return 0;
}

int Dummy3Ext(int max_duration)
{
    _dummy3_action_ext->Trigger(max_duration);
    return 0;
}
// EXTERN

int StartPositionStreamingExt()
{
    _position_broker_ext->StartStreamXYZ();
    _position_broker_ext->StartStreamLLA();
    return 0;
}

int StopPositionStreamingExt()
{
    _position_broker_ext->StopStreamXYZ();
    _position_broker_ext->StopStreamLLA();
    return 0;
}

double XExt()
{
    return _position_broker_ext->GetX();
}

double YExt()
{
    return _position_broker_ext->GetY();
}

double ZExt()
{
    return _position_broker_ext->GetZ();
}

void XYZPositionExt(double *x, double *y, double *z)
{
    geometry_msgs::PoseStamped pose = _position_broker_ext->GetXYZ();
    
    *x = pose.pose.position.x;
    *y = pose.pose.position.y;
    *z = pose.pose.position.z;
}

double LongitudeExt()
{
    return _position_broker_ext->GetLongitude();
}

double LatittudeExt()
{
    return _position_broker_ext->GetLatitude();
}

double AltitudeExt()
{
    return _position_broker_ext->GetAltitude();
}

void LLAPositionExt(double *longitude, double *latitude, double *altitude)
{
    geographic_msgs::GeoPoseStamped pose = _position_broker_ext->GetLLA();

    *longitude = pose.pose.position.longitude;
    *latitude = pose.pose.position.latitude;
    *altitude = pose.pose.position.altitude;
}

int ArmExt()
{
    _arming_action_ext->Trigger(true);
    return 0;
}

int DisarmExt()
{
    _arming_action_ext->Trigger(false);
    return 0;
}

int TakeOffExt()
{
    _takeoff_action_ext->Trigger(3);
    return 0;
}

int TakeOffExt(double height)
{
    _takeoff_action_ext->Trigger(height);
    return 0;
}

int LandExt()
{
    _landing_action_ext->Trigger();
    return 0;
}

int FlyToLocalPointExt(double x, double y, double z)
{
    _moving_action_ext->MoveToLocalAbsolut(x, y, z);
    return 0;
}

int FlyToXExt(double x)
{
     _moving_action_ext->MoveToLocalAbsolut(x, NAN, NAN);
    return 0;
}

int FlyByXExt(double x)
{
    _moving_action_ext->MoveToLocalRelative(x, NAN, NAN);
    return 0;
}

int FlyToYExt(double y)
{
     _moving_action_ext->MoveToLocalAbsolut(NAN, y, NAN);
    return 0;
}

int FlyByYExt(double y)
{
     _moving_action_ext->MoveToLocalRelative(NAN, y, NAN);
    return 0;
}

int FlyToZExt(double z)
{
     _moving_action_ext->MoveToLocalAbsolut(NAN, NAN, z);
    return 0;
}

int FlyByZExt(double z)
{
    _moving_action_ext->MoveToLocalRelative(NAN, NAN, z);
    return 0;
}

int FlyByLocalDistanceExt(double x, double y, double z)
{
    _moving_action_ext->MoveToLocalRelative(x, y, z);
    return 0;
}

int FlyToGlobalPointExt(double longitude, double latitude, double altitude)
{
    _moving_action_ext->MoveToGlobalAbsolut(longitude, latitude, altitude);
    return 0;
}

int FlyToLongitudeExt(double longitude)
{
     _moving_action_ext->MoveToGlobalAbsolut(longitude, NAN, NAN);
    return 0;
}

int FlyByLongitudeExt(double longitude)
{
    _moving_action_ext->MoveToGlobalRelative(longitude, NAN, NAN);
    return 0;
}

int FlyToLatitudeExt(double latitude)
{
    _moving_action_ext->MoveToGlobalAbsolut(NAN, latitude, NAN);
    return 0;
}

int FlyByLatitudeExt(double latitude)
{
    _moving_action_ext->MoveToGlobalRelative(NAN, latitude, NAN);
    return 0;
}

int FlyToAltitudeExt(double altitude)
{
    _moving_action_ext->MoveToGlobalAbsolut(NAN, NAN, altitude);
    return 0;
}

int FlyByAltitudeExt(double altitude)
{
    _moving_action_ext->MoveToGlobalRelative(NAN, NAN, altitude);
    return 0;
}

int FlyByGlobalDistanceExt(double longitude, double latitude, double altitude)
{
    _moving_action_ext->MoveToGlobalRelative(longitude, latitude, altitude);
    return 0;
}

int HeadToXYZExt(double x, double y, double z)
{
    _moving_action_ext->HeadTowardsOn(x, y, z);
    return 0;
}

int HeadToXExt(double x)
{
    _moving_action_ext->HeadTowardsOn(x, NAN, NAN);
    return 0;
}

int HeadToYExt(double y)
{
    _moving_action_ext->HeadTowardsOn(NAN, y, NAN);
    return 0;
}

int HeadToZExt(double z)
{
    _moving_action_ext->HeadTowardsOn(NAN, NAN, z);
    return 0;
}

int StopHeadingExt()
{
    _moving_action_ext->HeadTowardsOff();
    return 0;
}

int Dummy1Ext(int max_duration)
{
    _dummy1_action_ext->Trigger(max_duration);
    return 0;
}

int Dummy2Ext(int max_duration)
{
    _dummy2_action_ext->Trigger(max_duration);
    return 0;
}

int Dummy3Ext(int max_duration)
{
    _dummy3_action_ext->Trigger(max_duration);
    return 0;
}

double Sensor1ValueExt()
{
    return _sensor_broker_ext->GetSensor1Reading();
}

int StartOrbitExt(double radius)
{
    _orbit_action_ext->StartOrbit(radius);

    return 0;
}

int StopOrbitExt()
{
    _orbit_action_ext->StopOrbit();

    return 0;
}ueExt()
{
    return _sensor_broker_ext->GetSensor1Reading();
}

int StartOrbitExt(double radius)
{
    _orbit_action_ext->StartOrbit(radius);

    return 0;
}

int StopOrbitExt()
{
    _orbit_action_ext->StopOrbit();

    return 0;
} */
%module DroneInterface

%{
#include "UniformMissionSpace.h"
#include "UniformApi.h"
%}
%include <std_string.i>
%include "UniformMissionSpace.h"
%include "UniformApi.h"

%include <typemaps.i>

%rename(wrapped_xyz) XYZPosition(string drone, double *x, double *y, double *z);

%apply double *OUTPUT { double *x }
%apply double *OUTPUT { double *y }
%apply double *OUTPUT { double *z }
void XYZPosition(string drone, double *x, double *y, double *z);

%insert(go_wrapper) %{

func XYZ(drone string) (x, y, z float64) {
    x_pos := []float64{0.0}
    y_pos := []float64{0.0}
    z_pos := []float64{0.0}

    Wrapped_xyz(drone, x_pos, y_pos, z_pos)

    x = x_pos[0]
    y = y_pos[0]
    z = z_pos[0]

    return
}

%}

%rename(wrapped_lla) LLAPosition(string drone, double *longitude, double *latitude, double *altitude);

%apply double *OUTPUT { double *longitude }
%apply double *OUTPUT { double *latitude }
%apply double *OUTPUT { double *altitude }
void LLAPosition(string drone, double *longitude, double *latitude, double *altitude);

%insert(go_wrapper) %{

func LLA(drone string) (longitude, latitude, altitude float64) {
    long_pos := []float64{0.0}
    lat_pos := []float64{0.0}
    alt_pos := []float64{0.0}

    Wrapped_xyz(drone, long_pos, lat_pos, alt_pos)

    longitude = long_pos[0]
    latitude = lat_pos[0]
    altitude = alt_pos[0]

    return
}

%}
#ifndef NAVIGATION_H
#define NAVIGATION_H
#include "ros/ros.h"
#include "sensor_msgs/Imu.h"
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/PointStamped.h"
#include "sensor_msgs/NavSatFix.h"
#include "geometry_msgs/Vector3Stamped.h"
#include "ros/topic.h"
#include <ros/callback_queue.h>
#include <vector>
#include <string.h>
#include <boost/shared_ptr.hpp>
#include <actionlib_msgs/GoalStatus.h>
#include <std_msgs/UInt32.h>
#include <std_msgs/UInt8.h>
#include <std_msgs/Float32.h>
#include <std_msgs/String.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <tf/transform_datatypes.h>
#include <geometry_msgs/Point32.h>

#include <mavros_msgs/Waypoint.h>
#include <mavros_msgs/WaypointList.h>
#include <mavros_msgs/RCIn.h>
#include <mavros_msgs/State.h>
#include <tf/LinearMath/Quaternion.h>

#include <core_api/Arm.h>
#include <core_api/Disarm.h>
#include <core_api/RTL.h>
#include <core_api/PositionSet.h>
#include <core_api/PositionSetGlobal.h>
#include <core_api/PositionHold.h>
#include <core_api/AttitudeSet.h>
#include <core_api/WaypointClear.h>
#include <core_api/WaypointGet.h>
#include <core_api/WaypointSet.h>
#include <core_api/WaypointSetCurrent.h>
#include <core_api/WaypointExecute.h>
#include <core_api/WaypointPause.h>
#include <core_api/VelocitySet.h>
#include <core_api/UserModeNameSetReset.h>
#include <core_api/TakeOff.h>
#include <core_api/Land.h>
#include <core_api/ParamGet.h>

#include <cpp_api/UserData.h>

#include <navigation_util/NavigationPosActionResult.h>
#include <navigation_util/NavigationVelActionResult.h>


#define CONSTANTS_ONE_G					9.80665f		/* m/s^2		*/
#define CONSTANTS_AIR_DENSITY_SEA_LEVEL_15C		1.225f			/* kg/m^3		*/
#define CONSTANTS_AIR_GAS_CONST				287.1f 			/* J/(kg * K)		*/
#define CONSTANTS_ABSOLUTE_NULL_CELSIUS			-273.15f		/* °C			*/
#define CONSTANTS_RADIUS_OF_EARTH			6371000			/* meters (m)		*/
#define M_DEG_TO_RAD 					0.01745329251994


class Navigation
{
public:
    enum attribute_name{
        local_position = 0,
        global_position,
        vehicle_attitude_quat,
        vehicle_attitude_euler,
        position_set_result,
        velocity_set_result,
        waypoint_success,
        vehicle_state,
        rc_channels,
        param_updated
    };

    struct vehicle_local_position{
        double x;
        double y;
        double z;
        double vx;
        double vy;
        double vz;
    };
 
    mavros_msgs::WaypointListConstPtr wpl;

    struct attitude_euler{
        double roll;
        double pitch;
        double yaw;
        double rollspeed;
        double pitchspeed;
        double yawspeed;
    };
    

private:
    ros::NodeHandlePtr nh_ptr_;
    ros::AsyncSpinner *spinner_ptr_;
    std::string global_namespace;

    ros::Subscriber _vehicle_attitude_quat_sub;
    ros::Subscriber _vehicle_attitude_euler_sub;
    ros::Subscriber _vehicle_lpos_sub;
    ros::Subscriber _vehicle_gpos_sub;
    ros::Subscriber _gcs_wps_sub;
    ros::Subscriber _gcs_cmd_sub;
    ros::Subscriber _waypoint_reached_sub;
    ros::Subscriber _waypoints_list_sub;
    ros::Subscriber _parameter_updated_sub;
    ros::Subscriber _vehicle_mode_sub;
    ros::Subscriber _rc_channel_sub;
    ros::Subscriber _pos_set_result_sub;
    ros::Subscriber _vel_set_result_sub;

    std::vector<ros::Subscriber>    _user_data_sub;
    std::vector<ros::Publisher>     _user_data_pub;

    sensor_msgs::ImuConstPtr            att_quat_ptr;
    geometry_msgs::TwistStampedConstPtr att_euler_ptr;
    geometry_msgs::TwistStampedConstPtr lpos_ptr;
    sensor_msgs::NavSatFixConstPtr      gpos_ptr;
    mavros_msgs::StateConstPtr          vehicle_state_ptr;
    mavros_msgs::RCInConstPtr           rc_channels_ptr;
    std_msgs::StringConstPtr            param_name_ptr;

    void (*func_cb_lpos)(void *);
    void (*func_cb_gpos)(void *);
    void (*func_cb_att_quat)(void *);
    void (*func_cb_att_euler)(void *);
    void (*func_cb_position_set_result)(void *);
    void (*func_cb_velocity_set_result)(void *);
    void (*func_cb_wp_success)(void *);
    void (*func_cb_vehicle_state)(void *);
    void (*func_cb_rc_channels)(void *);
    void (*func_cb_param_updated)(void *);

    std::map<std::string,void(*)(void*)> _user_data_sub_index;

private:
    //callbacks
    void waypointAchievedCb(const std_msgs::UInt8ConstPtr &wp);
    void waypointsListCb(const mavros_msgs::WaypointListConstPtr &wpl);

    void lposCb(const geometry_msgs::TwistStampedConstPtr &lpos);
    void attitudeQuatCb(const sensor_msgs::ImuConstPtr &att);
    void attitudeEulerCb(const geometry_msgs::TwistStampedConstPtr &att);
    void posSetResultCb(const navigation_util::NavigationPosActionResultConstPtr &pos_set_result);
    void velSetResultCb(const navigation_util::NavigationVelActionResultConstPtr &vel_set_result);
    void gposCb(const sensor_msgs::NavSatFixConstPtr &gpos);

    void paramUpdatedCb(const std_msgs::StringConstPtr &param_name);
    void vehicleModeCb(const mavros_msgs::StateConstPtr &state);
    void rcChannelCb(const mavros_msgs::RCInConstPtr &rc_data);

    void userDataCb(const ros::MessageEvent<const cpp_api::UserData> &ros_event);

public:
    Navigation(std::string username);
    Navigation();
    ~Navigation();
    int arm();
    int disarm();
    int position_hold();
    int waypoint_clear();

    int land(bool async = false);
    int take_off(float takeoff_alt = 5.0);

    void sysSubscribe(int attribute_name, void(*func_cb)(void *));
    void userSubscribe(std::string topic_name, void(*func_cb)(void *));
    int userAdvertise(std::string topic_name);
    void userPublish(int handle, cpp_api::UserData data);

    //getters
    int waypoint_get(std::vector<mavros_msgs::Waypoint> &waypoints);
    void print_all_waypoints();

    //setters
    int waypoint_set(std::vector<mavros_msgs::Waypoint> waypoints);
    int waypoint_execute();
    int waypoint_pause();
    int waypoint_set_current(int waypoint_no);
    int position_set(float x, float y, float z, float yaw=0, float tolerance=0, bool relative=false, bool async=false, bool yaw_valid=false, bool body_frame=false);
    int position_set_global(float lat, float lon, float alt, float yaw=0, float tolerance=0, bool async=false, bool yaw_valid=false);
    int velocity_set(float vx, float vy, float vz, float yaw_rate=0, float tolerance=0, bool relative=false, bool async=false, bool yaw_rate_valid=false, bool body_frame=false);
    int attitude_set(float roll, float pitch, float yaw, float thrust);
    void user_mode_name_set_reset(std::string mode_name);
    int rtl();
};


#endif // NAVIGATION_H

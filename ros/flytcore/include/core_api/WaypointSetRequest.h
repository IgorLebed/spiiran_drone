// Generated by gencpp from file core_api/WaypointSetRequest.msg
// DO NOT EDIT!


#ifndef CORE_API_MESSAGE_WAYPOINTSETREQUEST_H
#define CORE_API_MESSAGE_WAYPOINTSETREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mavros_msgs/Waypoint.h>

namespace core_api
{
template <class ContainerAllocator>
struct WaypointSetRequest_
{
  typedef WaypointSetRequest_<ContainerAllocator> Type;

  WaypointSetRequest_()
    : waypoints()  {
    }
  WaypointSetRequest_(const ContainerAllocator& _alloc)
    : waypoints(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::mavros_msgs::Waypoint_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::mavros_msgs::Waypoint_<ContainerAllocator> >::other >  _waypoints_type;
  _waypoints_type waypoints;





  typedef boost::shared_ptr< ::core_api::WaypointSetRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::core_api::WaypointSetRequest_<ContainerAllocator> const> ConstPtr;

}; // struct WaypointSetRequest_

typedef ::core_api::WaypointSetRequest_<std::allocator<void> > WaypointSetRequest;

typedef boost::shared_ptr< ::core_api::WaypointSetRequest > WaypointSetRequestPtr;
typedef boost::shared_ptr< ::core_api::WaypointSetRequest const> WaypointSetRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::core_api::WaypointSetRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::core_api::WaypointSetRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace core_api

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'core_api': ['/home/flytpod/flytos/src/flytOS/flyt_core/core_api/core_api/msg/param', '/home/flytpod/flytos/src/flytOS/flyt_core/core_api/core_api/msg/param'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'diagnostic_msgs': ['/opt/ros/kinetic/share/diagnostic_msgs/cmake/../msg'], 'mavros_msgs': ['/home/flytpod/flytos/src/flytOS/flyt_core/core_nodes/mavros/mavros_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::core_api::WaypointSetRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::core_api::WaypointSetRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::core_api::WaypointSetRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::core_api::WaypointSetRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::core_api::WaypointSetRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::core_api::WaypointSetRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::core_api::WaypointSetRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a2a7f3a6be7e0cbb0a52883d59e82ee9";
  }

  static const char* value(const ::core_api::WaypointSetRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa2a7f3a6be7e0cbbULL;
  static const uint64_t static_value2 = 0x0a52883d59e82ee9ULL;
};

template<class ContainerAllocator>
struct DataType< ::core_api::WaypointSetRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "core_api/WaypointSetRequest";
  }

  static const char* value(const ::core_api::WaypointSetRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::core_api::WaypointSetRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
\n\
mavros_msgs/Waypoint[] waypoints\n\
\n\
================================================================================\n\
MSG: mavros_msgs/Waypoint\n\
# Waypoint.msg\n\
#\n\
# ROS representation of MAVLink MISSION_ITEM\n\
# See mavlink documentation\n\
\n\
\n\
\n\
# see enum MAV_FRAME\n\
uint8 frame\n\
uint8 FRAME_GLOBAL = 0\n\
uint8 FRAME_LOCAL_NED = 1\n\
uint8 FRAME_MISSION = 2\n\
uint8 FRAME_GLOBAL_REL_ALT = 3\n\
uint8 FRAME_LOCAL_ENU = 4\n\
\n\
# see enum MAV_CMD and CommandCode.msg\n\
uint16 command\n\
\n\
bool is_current\n\
bool autocontinue\n\
# meaning of this params described in enum MAV_CMD\n\
float32 param1\n\
float32 param2\n\
float32 param3\n\
float32 param4\n\
float64 x_lat\n\
float64 y_long\n\
float64 z_alt\n\
";
  }

  static const char* value(const ::core_api::WaypointSetRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::core_api::WaypointSetRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.waypoints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WaypointSetRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::core_api::WaypointSetRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::core_api::WaypointSetRequest_<ContainerAllocator>& v)
  {
    s << indent << "waypoints[]" << std::endl;
    for (size_t i = 0; i < v.waypoints.size(); ++i)
    {
      s << indent << "  waypoints[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::mavros_msgs::Waypoint_<ContainerAllocator> >::stream(s, indent + "    ", v.waypoints[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CORE_API_MESSAGE_WAYPOINTSETREQUEST_H

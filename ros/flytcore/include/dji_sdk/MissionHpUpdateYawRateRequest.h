// Generated by gencpp from file dji_sdk/MissionHpUpdateYawRateRequest.msg
// DO NOT EDIT!


#ifndef DJI_SDK_MESSAGE_MISSIONHPUPDATEYAWRATEREQUEST_H
#define DJI_SDK_MESSAGE_MISSIONHPUPDATEYAWRATEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dji_sdk
{
template <class ContainerAllocator>
struct MissionHpUpdateYawRateRequest_
{
  typedef MissionHpUpdateYawRateRequest_<ContainerAllocator> Type;

  MissionHpUpdateYawRateRequest_()
    : yaw_rate(0.0)
    , direction(0)  {
    }
  MissionHpUpdateYawRateRequest_(const ContainerAllocator& _alloc)
    : yaw_rate(0.0)
    , direction(0)  {
  (void)_alloc;
    }



   typedef float _yaw_rate_type;
  _yaw_rate_type yaw_rate;

   typedef uint8_t _direction_type;
  _direction_type direction;





  typedef boost::shared_ptr< ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MissionHpUpdateYawRateRequest_

typedef ::dji_sdk::MissionHpUpdateYawRateRequest_<std::allocator<void> > MissionHpUpdateYawRateRequest;

typedef boost::shared_ptr< ::dji_sdk::MissionHpUpdateYawRateRequest > MissionHpUpdateYawRateRequestPtr;
typedef boost::shared_ptr< ::dji_sdk::MissionHpUpdateYawRateRequest const> MissionHpUpdateYawRateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dji_sdk

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'dji_sdk': ['/home/flytpod/flytos/src/flytOS/flyt_core/core_nodes/dji/dji_sdk/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5e07211af04442e78da518f6609aac85";
  }

  static const char* value(const ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5e07211af04442e7ULL;
  static const uint64_t static_value2 = 0x8da518f6609aac85ULL;
};

template<class ContainerAllocator>
struct DataType< ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dji_sdk/MissionHpUpdateYawRateRequest";
  }

  static const char* value(const ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 yaw_rate\n\
uint8 direction\n\
";
  }

  static const char* value(const ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.yaw_rate);
      stream.next(m.direction);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MissionHpUpdateYawRateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dji_sdk::MissionHpUpdateYawRateRequest_<ContainerAllocator>& v)
  {
    s << indent << "yaw_rate: ";
    Printer<float>::stream(s, indent + "  ", v.yaw_rate);
    s << indent << "direction: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.direction);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DJI_SDK_MESSAGE_MISSIONHPUPDATEYAWRATEREQUEST_H

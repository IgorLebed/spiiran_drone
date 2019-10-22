// Generated by gencpp from file core_api/AutopilotRebootRequest.msg
// DO NOT EDIT!


#ifndef CORE_API_MESSAGE_AUTOPILOTREBOOTREQUEST_H
#define CORE_API_MESSAGE_AUTOPILOTREBOOTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace core_api
{
template <class ContainerAllocator>
struct AutopilotRebootRequest_
{
  typedef AutopilotRebootRequest_<ContainerAllocator> Type;

  AutopilotRebootRequest_()
    : reboot_mode(0)  {
    }
  AutopilotRebootRequest_(const ContainerAllocator& _alloc)
    : reboot_mode(0)  {
  (void)_alloc;
    }



   typedef int8_t _reboot_mode_type;
  _reboot_mode_type reboot_mode;



  enum {
    REBOOT = 1,
    REBOOT_TO_SLEEP = 3,
    REBOOT_FROM_SLEEP = 4,
  };


  typedef boost::shared_ptr< ::core_api::AutopilotRebootRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::core_api::AutopilotRebootRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AutopilotRebootRequest_

typedef ::core_api::AutopilotRebootRequest_<std::allocator<void> > AutopilotRebootRequest;

typedef boost::shared_ptr< ::core_api::AutopilotRebootRequest > AutopilotRebootRequestPtr;
typedef boost::shared_ptr< ::core_api::AutopilotRebootRequest const> AutopilotRebootRequestConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::core_api::AutopilotRebootRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::core_api::AutopilotRebootRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace core_api

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'core_api': ['/home/flytpod/flytos/src/flytOS/flyt_core/core_api/core_api/msg/param', '/home/flytpod/flytos/src/flytOS/flyt_core/core_api/core_api/msg/param'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'diagnostic_msgs': ['/opt/ros/kinetic/share/diagnostic_msgs/cmake/../msg'], 'mavros_msgs': ['/home/flytpod/flytos/src/flytOS/flyt_core/core_nodes/mavros/mavros_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::core_api::AutopilotRebootRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::core_api::AutopilotRebootRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::core_api::AutopilotRebootRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::core_api::AutopilotRebootRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::core_api::AutopilotRebootRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::core_api::AutopilotRebootRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::core_api::AutopilotRebootRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f9b34444b62826dd2bbc414b1ea8856f";
  }

  static const char* value(const ::core_api::AutopilotRebootRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf9b34444b62826ddULL;
  static const uint64_t static_value2 = 0x2bbc414b1ea8856fULL;
};

template<class ContainerAllocator>
struct DataType< ::core_api::AutopilotRebootRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "core_api/AutopilotRebootRequest";
  }

  static const char* value(const ::core_api::AutopilotRebootRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::core_api::AutopilotRebootRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 REBOOT=1\n\
int8 REBOOT_TO_SLEEP=3\n\
int8 REBOOT_FROM_SLEEP=4\n\
\n\
int8 reboot_mode\n\
";
  }

  static const char* value(const ::core_api::AutopilotRebootRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::core_api::AutopilotRebootRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.reboot_mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AutopilotRebootRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::core_api::AutopilotRebootRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::core_api::AutopilotRebootRequest_<ContainerAllocator>& v)
  {
    s << indent << "reboot_mode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.reboot_mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CORE_API_MESSAGE_AUTOPILOTREBOOTREQUEST_H

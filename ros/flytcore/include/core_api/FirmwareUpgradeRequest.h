// Generated by gencpp from file core_api/FirmwareUpgradeRequest.msg
// DO NOT EDIT!


#ifndef CORE_API_MESSAGE_FIRMWAREUPGRADEREQUEST_H
#define CORE_API_MESSAGE_FIRMWAREUPGRADEREQUEST_H


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
struct FirmwareUpgradeRequest_
{
  typedef FirmwareUpgradeRequest_<ContainerAllocator> Type;

  FirmwareUpgradeRequest_()
    : filepath()  {
    }
  FirmwareUpgradeRequest_(const ContainerAllocator& _alloc)
    : filepath(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _filepath_type;
  _filepath_type filepath;





  typedef boost::shared_ptr< ::core_api::FirmwareUpgradeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::core_api::FirmwareUpgradeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct FirmwareUpgradeRequest_

typedef ::core_api::FirmwareUpgradeRequest_<std::allocator<void> > FirmwareUpgradeRequest;

typedef boost::shared_ptr< ::core_api::FirmwareUpgradeRequest > FirmwareUpgradeRequestPtr;
typedef boost::shared_ptr< ::core_api::FirmwareUpgradeRequest const> FirmwareUpgradeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::core_api::FirmwareUpgradeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::core_api::FirmwareUpgradeRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::core_api::FirmwareUpgradeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::core_api::FirmwareUpgradeRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::core_api::FirmwareUpgradeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::core_api::FirmwareUpgradeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::core_api::FirmwareUpgradeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::core_api::FirmwareUpgradeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::core_api::FirmwareUpgradeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5ef967a25f780d4a216c15b3834dca97";
  }

  static const char* value(const ::core_api::FirmwareUpgradeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5ef967a25f780d4aULL;
  static const uint64_t static_value2 = 0x216c15b3834dca97ULL;
};

template<class ContainerAllocator>
struct DataType< ::core_api::FirmwareUpgradeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "core_api/FirmwareUpgradeRequest";
  }

  static const char* value(const ::core_api::FirmwareUpgradeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::core_api::FirmwareUpgradeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string filepath\n\
";
  }

  static const char* value(const ::core_api::FirmwareUpgradeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::core_api::FirmwareUpgradeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.filepath);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FirmwareUpgradeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::core_api::FirmwareUpgradeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::core_api::FirmwareUpgradeRequest_<ContainerAllocator>& v)
  {
    s << indent << "filepath: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.filepath);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CORE_API_MESSAGE_FIRMWAREUPGRADEREQUEST_H

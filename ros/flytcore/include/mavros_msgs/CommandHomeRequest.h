// Generated by gencpp from file mavros_msgs/CommandHomeRequest.msg
// DO NOT EDIT!


#ifndef MAVROS_MSGS_MESSAGE_COMMANDHOMEREQUEST_H
#define MAVROS_MSGS_MESSAGE_COMMANDHOMEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mavros_msgs
{
template <class ContainerAllocator>
struct CommandHomeRequest_
{
  typedef CommandHomeRequest_<ContainerAllocator> Type;

  CommandHomeRequest_()
    : current_gps(false)
    , latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)  {
    }
  CommandHomeRequest_(const ContainerAllocator& _alloc)
    : current_gps(false)
    , latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _current_gps_type;
  _current_gps_type current_gps;

   typedef float _latitude_type;
  _latitude_type latitude;

   typedef float _longitude_type;
  _longitude_type longitude;

   typedef float _altitude_type;
  _altitude_type altitude;





  typedef boost::shared_ptr< ::mavros_msgs::CommandHomeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mavros_msgs::CommandHomeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CommandHomeRequest_

typedef ::mavros_msgs::CommandHomeRequest_<std::allocator<void> > CommandHomeRequest;

typedef boost::shared_ptr< ::mavros_msgs::CommandHomeRequest > CommandHomeRequestPtr;
typedef boost::shared_ptr< ::mavros_msgs::CommandHomeRequest const> CommandHomeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mavros_msgs::CommandHomeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mavros_msgs::CommandHomeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mavros_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'mavros_msgs': ['/home/flytpod/flytos/src/flytOS/flyt_core/core_nodes/mavros/mavros_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mavros_msgs::CommandHomeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mavros_msgs::CommandHomeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavros_msgs::CommandHomeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavros_msgs::CommandHomeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavros_msgs::CommandHomeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavros_msgs::CommandHomeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mavros_msgs::CommandHomeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4afab8683774a6cfa862aace483f5274";
  }

  static const char* value(const ::mavros_msgs::CommandHomeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4afab8683774a6cfULL;
  static const uint64_t static_value2 = 0xa862aace483f5274ULL;
};

template<class ContainerAllocator>
struct DataType< ::mavros_msgs::CommandHomeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mavros_msgs/CommandHomeRequest";
  }

  static const char* value(const ::mavros_msgs::CommandHomeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mavros_msgs::CommandHomeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
bool current_gps\n\
float32 latitude\n\
float32 longitude\n\
float32 altitude\n\
";
  }

  static const char* value(const ::mavros_msgs::CommandHomeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mavros_msgs::CommandHomeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_gps);
      stream.next(m.latitude);
      stream.next(m.longitude);
      stream.next(m.altitude);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CommandHomeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mavros_msgs::CommandHomeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mavros_msgs::CommandHomeRequest_<ContainerAllocator>& v)
  {
    s << indent << "current_gps: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.current_gps);
    s << indent << "latitude: ";
    Printer<float>::stream(s, indent + "  ", v.latitude);
    s << indent << "longitude: ";
    Printer<float>::stream(s, indent + "  ", v.longitude);
    s << indent << "altitude: ";
    Printer<float>::stream(s, indent + "  ", v.altitude);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAVROS_MSGS_MESSAGE_COMMANDHOMEREQUEST_H

// Generated by gencpp from file mavros_msgs/GeofencePushResponse.msg
// DO NOT EDIT!


#ifndef MAVROS_MSGS_MESSAGE_GEOFENCEPUSHRESPONSE_H
#define MAVROS_MSGS_MESSAGE_GEOFENCEPUSHRESPONSE_H


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
struct GeofencePushResponse_
{
  typedef GeofencePushResponse_<ContainerAllocator> Type;

  GeofencePushResponse_()
    : success(false)
    , count(0)  {
    }
  GeofencePushResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , count(0)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef uint8_t _count_type;
  _count_type count;





  typedef boost::shared_ptr< ::mavros_msgs::GeofencePushResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mavros_msgs::GeofencePushResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GeofencePushResponse_

typedef ::mavros_msgs::GeofencePushResponse_<std::allocator<void> > GeofencePushResponse;

typedef boost::shared_ptr< ::mavros_msgs::GeofencePushResponse > GeofencePushResponsePtr;
typedef boost::shared_ptr< ::mavros_msgs::GeofencePushResponse const> GeofencePushResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mavros_msgs::GeofencePushResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mavros_msgs::GeofencePushResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::mavros_msgs::GeofencePushResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mavros_msgs::GeofencePushResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavros_msgs::GeofencePushResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavros_msgs::GeofencePushResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavros_msgs::GeofencePushResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavros_msgs::GeofencePushResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mavros_msgs::GeofencePushResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "00ba4d66f37d7947976581272399219d";
  }

  static const char* value(const ::mavros_msgs::GeofencePushResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x00ba4d66f37d7947ULL;
  static const uint64_t static_value2 = 0x976581272399219dULL;
};

template<class ContainerAllocator>
struct DataType< ::mavros_msgs::GeofencePushResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mavros_msgs/GeofencePushResponse";
  }

  static const char* value(const ::mavros_msgs::GeofencePushResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mavros_msgs::GeofencePushResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n\
uint8 count\n\
\n\
";
  }

  static const char* value(const ::mavros_msgs::GeofencePushResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mavros_msgs::GeofencePushResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.count);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GeofencePushResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mavros_msgs::GeofencePushResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mavros_msgs::GeofencePushResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "count: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.count);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAVROS_MSGS_MESSAGE_GEOFENCEPUSHRESPONSE_H

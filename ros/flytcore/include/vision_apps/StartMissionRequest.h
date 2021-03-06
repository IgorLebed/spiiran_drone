// Generated by gencpp from file vision_apps/StartMissionRequest.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_STARTMISSIONREQUEST_H
#define VISION_APPS_MESSAGE_STARTMISSIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace vision_apps
{
template <class ContainerAllocator>
struct StartMissionRequest_
{
  typedef StartMissionRequest_<ContainerAllocator> Type;

  StartMissionRequest_()
    : holding_time(0.0)
    , holding_distance(0.0)
    , from_origin(false)
    , async(false)  {
    }
  StartMissionRequest_(const ContainerAllocator& _alloc)
    : holding_time(0.0)
    , holding_distance(0.0)
    , from_origin(false)
    , async(false)  {
  (void)_alloc;
    }



   typedef float _holding_time_type;
  _holding_time_type holding_time;

   typedef float _holding_distance_type;
  _holding_distance_type holding_distance;

   typedef uint8_t _from_origin_type;
  _from_origin_type from_origin;

   typedef uint8_t _async_type;
  _async_type async;





  typedef boost::shared_ptr< ::vision_apps::StartMissionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vision_apps::StartMissionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct StartMissionRequest_

typedef ::vision_apps::StartMissionRequest_<std::allocator<void> > StartMissionRequest;

typedef boost::shared_ptr< ::vision_apps::StartMissionRequest > StartMissionRequestPtr;
typedef boost::shared_ptr< ::vision_apps::StartMissionRequest const> StartMissionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vision_apps::StartMissionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vision_apps::StartMissionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vision_apps

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'vision_apps': ['/home/flytpod/flytos/src/flytOS/flyt_packages/vision/vision_nodes/msg', '/home/flytpod/flytos/amd64-devel/share/vision_apps/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vision_apps::StartMissionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vision_apps::StartMissionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_apps::StartMissionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_apps::StartMissionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_apps::StartMissionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_apps::StartMissionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vision_apps::StartMissionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2f9fe1c235d113fba90a58f8c19633a4";
  }

  static const char* value(const ::vision_apps::StartMissionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2f9fe1c235d113fbULL;
  static const uint64_t static_value2 = 0xa90a58f8c19633a4ULL;
};

template<class ContainerAllocator>
struct DataType< ::vision_apps::StartMissionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vision_apps/StartMissionRequest";
  }

  static const char* value(const ::vision_apps::StartMissionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vision_apps::StartMissionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 holding_time\n\
float32 holding_distance\n\
bool from_origin\n\
bool async\n\
";
  }

  static const char* value(const ::vision_apps::StartMissionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vision_apps::StartMissionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.holding_time);
      stream.next(m.holding_distance);
      stream.next(m.from_origin);
      stream.next(m.async);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StartMissionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vision_apps::StartMissionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vision_apps::StartMissionRequest_<ContainerAllocator>& v)
  {
    s << indent << "holding_time: ";
    Printer<float>::stream(s, indent + "  ", v.holding_time);
    s << indent << "holding_distance: ";
    Printer<float>::stream(s, indent + "  ", v.holding_distance);
    s << indent << "from_origin: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.from_origin);
    s << indent << "async: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.async);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISION_APPS_MESSAGE_STARTMISSIONREQUEST_H

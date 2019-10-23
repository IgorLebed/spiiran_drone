// Generated by gencpp from file vision_apps/StartLandingRequest.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_STARTLANDINGREQUEST_H
#define VISION_APPS_MESSAGE_STARTLANDINGREQUEST_H


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
struct StartLandingRequest_
{
  typedef StartLandingRequest_<ContainerAllocator> Type;

  StartLandingRequest_()
    : landing_threshold(0.0)
    , async(false)
    , hover(false)  {
    }
  StartLandingRequest_(const ContainerAllocator& _alloc)
    : landing_threshold(0.0)
    , async(false)
    , hover(false)  {
  (void)_alloc;
    }



   typedef float _landing_threshold_type;
  _landing_threshold_type landing_threshold;

   typedef uint8_t _async_type;
  _async_type async;

   typedef uint8_t _hover_type;
  _hover_type hover;





  typedef boost::shared_ptr< ::vision_apps::StartLandingRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vision_apps::StartLandingRequest_<ContainerAllocator> const> ConstPtr;

}; // struct StartLandingRequest_

typedef ::vision_apps::StartLandingRequest_<std::allocator<void> > StartLandingRequest;

typedef boost::shared_ptr< ::vision_apps::StartLandingRequest > StartLandingRequestPtr;
typedef boost::shared_ptr< ::vision_apps::StartLandingRequest const> StartLandingRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vision_apps::StartLandingRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vision_apps::StartLandingRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::vision_apps::StartLandingRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vision_apps::StartLandingRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_apps::StartLandingRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_apps::StartLandingRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_apps::StartLandingRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_apps::StartLandingRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vision_apps::StartLandingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "11c5cada868a7bb6c28781eedc327979";
  }

  static const char* value(const ::vision_apps::StartLandingRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x11c5cada868a7bb6ULL;
  static const uint64_t static_value2 = 0xc28781eedc327979ULL;
};

template<class ContainerAllocator>
struct DataType< ::vision_apps::StartLandingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vision_apps/StartLandingRequest";
  }

  static const char* value(const ::vision_apps::StartLandingRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vision_apps::StartLandingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 landing_threshold\n\
bool async\n\
bool hover\n\
";
  }

  static const char* value(const ::vision_apps::StartLandingRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vision_apps::StartLandingRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.landing_threshold);
      stream.next(m.async);
      stream.next(m.hover);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StartLandingRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vision_apps::StartLandingRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vision_apps::StartLandingRequest_<ContainerAllocator>& v)
  {
    s << indent << "landing_threshold: ";
    Printer<float>::stream(s, indent + "  ", v.landing_threshold);
    s << indent << "async: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.async);
    s << indent << "hover: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.hover);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISION_APPS_MESSAGE_STARTLANDINGREQUEST_H
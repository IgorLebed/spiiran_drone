// Generated by gencpp from file vision_apps/precisionlandingFeedback.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_PRECISIONLANDINGFEEDBACK_H
#define VISION_APPS_MESSAGE_PRECISIONLANDINGFEEDBACK_H


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
struct precisionlandingFeedback_
{
  typedef precisionlandingFeedback_<ContainerAllocator> Type;

  precisionlandingFeedback_()
    : status(0)
    , message()  {
    }
  precisionlandingFeedback_(const ContainerAllocator& _alloc)
    : status(0)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _status_type;
  _status_type status;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::vision_apps::precisionlandingFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vision_apps::precisionlandingFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct precisionlandingFeedback_

typedef ::vision_apps::precisionlandingFeedback_<std::allocator<void> > precisionlandingFeedback;

typedef boost::shared_ptr< ::vision_apps::precisionlandingFeedback > precisionlandingFeedbackPtr;
typedef boost::shared_ptr< ::vision_apps::precisionlandingFeedback const> precisionlandingFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vision_apps::precisionlandingFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vision_apps::precisionlandingFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vision_apps

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'vision_apps': ['/home/flytpod/flytos/src/flytOS/flyt_packages/vision/vision_nodes/msg', '/home/flytpod/flytos/amd64-devel/share/vision_apps/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vision_apps::precisionlandingFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vision_apps::precisionlandingFeedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_apps::precisionlandingFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_apps::precisionlandingFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_apps::precisionlandingFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_apps::precisionlandingFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vision_apps::precisionlandingFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2c1d00fb8b4e78420f43d93d5292a429";
  }

  static const char* value(const ::vision_apps::precisionlandingFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2c1d00fb8b4e7842ULL;
  static const uint64_t static_value2 = 0x0f43d93d5292a429ULL;
};

template<class ContainerAllocator>
struct DataType< ::vision_apps::precisionlandingFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vision_apps/precisionlandingFeedback";
  }

  static const char* value(const ::vision_apps::precisionlandingFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vision_apps::precisionlandingFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
int32 status\n\
string message\n\
";
  }

  static const char* value(const ::vision_apps::precisionlandingFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vision_apps::precisionlandingFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct precisionlandingFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vision_apps::precisionlandingFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vision_apps::precisionlandingFeedback_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISION_APPS_MESSAGE_PRECISIONLANDINGFEEDBACK_H

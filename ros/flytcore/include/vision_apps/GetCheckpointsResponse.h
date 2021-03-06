// Generated by gencpp from file vision_apps/GetCheckpointsResponse.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_GETCHECKPOINTSRESPONSE_H
#define VISION_APPS_MESSAGE_GETCHECKPOINTSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <vision_apps/Checkpoint.h>

namespace vision_apps
{
template <class ContainerAllocator>
struct GetCheckpointsResponse_
{
  typedef GetCheckpointsResponse_<ContainerAllocator> Type;

  GetCheckpointsResponse_()
    : success(false)
    , error_code(0)
    , message()
    , no_of_checkpoints(0)
    , checkpoints()  {
    }
  GetCheckpointsResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , error_code(0)
    , message(_alloc)
    , no_of_checkpoints(0)
    , checkpoints(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef uint8_t _error_code_type;
  _error_code_type error_code;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;

   typedef uint8_t _no_of_checkpoints_type;
  _no_of_checkpoints_type no_of_checkpoints;

   typedef std::vector< ::vision_apps::Checkpoint_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::vision_apps::Checkpoint_<ContainerAllocator> >::other >  _checkpoints_type;
  _checkpoints_type checkpoints;





  typedef boost::shared_ptr< ::vision_apps::GetCheckpointsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vision_apps::GetCheckpointsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetCheckpointsResponse_

typedef ::vision_apps::GetCheckpointsResponse_<std::allocator<void> > GetCheckpointsResponse;

typedef boost::shared_ptr< ::vision_apps::GetCheckpointsResponse > GetCheckpointsResponsePtr;
typedef boost::shared_ptr< ::vision_apps::GetCheckpointsResponse const> GetCheckpointsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vision_apps::GetCheckpointsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vision_apps::GetCheckpointsResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::vision_apps::GetCheckpointsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vision_apps::GetCheckpointsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_apps::GetCheckpointsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_apps::GetCheckpointsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_apps::GetCheckpointsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_apps::GetCheckpointsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vision_apps::GetCheckpointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0716ca053acdca4ffd9f1606f16f3814";
  }

  static const char* value(const ::vision_apps::GetCheckpointsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0716ca053acdca4fULL;
  static const uint64_t static_value2 = 0xfd9f1606f16f3814ULL;
};

template<class ContainerAllocator>
struct DataType< ::vision_apps::GetCheckpointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vision_apps/GetCheckpointsResponse";
  }

  static const char* value(const ::vision_apps::GetCheckpointsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vision_apps::GetCheckpointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n\
uint8 error_code\n\
string message\n\
uint8 no_of_checkpoints\n\
vision_apps/Checkpoint[] checkpoints\n\
\n\
\n\
================================================================================\n\
MSG: vision_apps/Checkpoint\n\
uint8 checkpoint_id\n\
uint8 tag_id\n\
float32 tag_x\n\
float32 tag_y\n\
float32 tag_z\n\
float32 tag_yaw\n\
float32 tag_size\n\
";
  }

  static const char* value(const ::vision_apps::GetCheckpointsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vision_apps::GetCheckpointsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.error_code);
      stream.next(m.message);
      stream.next(m.no_of_checkpoints);
      stream.next(m.checkpoints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetCheckpointsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vision_apps::GetCheckpointsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vision_apps::GetCheckpointsResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "error_code: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.error_code);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
    s << indent << "no_of_checkpoints: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.no_of_checkpoints);
    s << indent << "checkpoints[]" << std::endl;
    for (size_t i = 0; i < v.checkpoints.size(); ++i)
    {
      s << indent << "  checkpoints[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::vision_apps::Checkpoint_<ContainerAllocator> >::stream(s, indent + "    ", v.checkpoints[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISION_APPS_MESSAGE_GETCHECKPOINTSRESPONSE_H

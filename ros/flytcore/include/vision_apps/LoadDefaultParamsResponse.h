// Generated by gencpp from file vision_apps/LoadDefaultParamsResponse.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_LOADDEFAULTPARAMSRESPONSE_H
#define VISION_APPS_MESSAGE_LOADDEFAULTPARAMSRESPONSE_H


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
struct LoadDefaultParamsResponse_
{
  typedef LoadDefaultParamsResponse_<ContainerAllocator> Type;

  LoadDefaultParamsResponse_()
    : success(false)
    , error_code(0)
    , message()  {
    }
  LoadDefaultParamsResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , error_code(0)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef uint8_t _error_code_type;
  _error_code_type error_code;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct LoadDefaultParamsResponse_

typedef ::vision_apps::LoadDefaultParamsResponse_<std::allocator<void> > LoadDefaultParamsResponse;

typedef boost::shared_ptr< ::vision_apps::LoadDefaultParamsResponse > LoadDefaultParamsResponsePtr;
typedef boost::shared_ptr< ::vision_apps::LoadDefaultParamsResponse const> LoadDefaultParamsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4ad76664b0717ddbf6142456d7398288";
  }

  static const char* value(const ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4ad76664b0717ddbULL;
  static const uint64_t static_value2 = 0xf6142456d7398288ULL;
};

template<class ContainerAllocator>
struct DataType< ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vision_apps/LoadDefaultParamsResponse";
  }

  static const char* value(const ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n\
uint8 error_code\n\
string message\n\
\n\
";
  }

  static const char* value(const ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.error_code);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LoadDefaultParamsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vision_apps::LoadDefaultParamsResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "error_code: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.error_code);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISION_APPS_MESSAGE_LOADDEFAULTPARAMSRESPONSE_H

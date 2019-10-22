// Generated by gencpp from file core_api/ParamGetAllResponse.msg
// DO NOT EDIT!


#ifndef CORE_API_MESSAGE_PARAMGETALLRESPONSE_H
#define CORE_API_MESSAGE_PARAMGETALLRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <core_api/ParamInfo.h>

namespace core_api
{
template <class ContainerAllocator>
struct ParamGetAllResponse_
{
  typedef ParamGetAllResponse_<ContainerAllocator> Type;

  ParamGetAllResponse_()
    : param_list()
    , success(false)
    , message()  {
    }
  ParamGetAllResponse_(const ContainerAllocator& _alloc)
    : param_list(_alloc)
    , success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::core_api::ParamInfo_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::core_api::ParamInfo_<ContainerAllocator> >::other >  _param_list_type;
  _param_list_type param_list;

   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::core_api::ParamGetAllResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::core_api::ParamGetAllResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ParamGetAllResponse_

typedef ::core_api::ParamGetAllResponse_<std::allocator<void> > ParamGetAllResponse;

typedef boost::shared_ptr< ::core_api::ParamGetAllResponse > ParamGetAllResponsePtr;
typedef boost::shared_ptr< ::core_api::ParamGetAllResponse const> ParamGetAllResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::core_api::ParamGetAllResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::core_api::ParamGetAllResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::core_api::ParamGetAllResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::core_api::ParamGetAllResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::core_api::ParamGetAllResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::core_api::ParamGetAllResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::core_api::ParamGetAllResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::core_api::ParamGetAllResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::core_api::ParamGetAllResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d1a7906c0b9f8da89c07256c75c29a07";
  }

  static const char* value(const ::core_api::ParamGetAllResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd1a7906c0b9f8da8ULL;
  static const uint64_t static_value2 = 0x9c07256c75c29a07ULL;
};

template<class ContainerAllocator>
struct DataType< ::core_api::ParamGetAllResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "core_api/ParamGetAllResponse";
  }

  static const char* value(const ::core_api::ParamGetAllResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::core_api::ParamGetAllResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "core_api/ParamInfo[] param_list\n\
bool success\n\
string message\n\
\n\
\n\
================================================================================\n\
MSG: core_api/ParamInfo\n\
string param_id\n\
string param_value\n\
";
  }

  static const char* value(const ::core_api::ParamGetAllResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::core_api::ParamGetAllResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.param_list);
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ParamGetAllResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::core_api::ParamGetAllResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::core_api::ParamGetAllResponse_<ContainerAllocator>& v)
  {
    s << indent << "param_list[]" << std::endl;
    for (size_t i = 0; i < v.param_list.size(); ++i)
    {
      s << indent << "  param_list[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::core_api::ParamInfo_<ContainerAllocator> >::stream(s, indent + "    ", v.param_list[i]);
    }
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CORE_API_MESSAGE_PARAMGETALLRESPONSE_H

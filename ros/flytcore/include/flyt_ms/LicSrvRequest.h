// Generated by gencpp from file flyt_ms/LicSrvRequest.msg
// DO NOT EDIT!


#ifndef FLYT_MS_MESSAGE_LICSRVREQUEST_H
#define FLYT_MS_MESSAGE_LICSRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace flyt_ms
{
template <class ContainerAllocator>
struct LicSrvRequest_
{
  typedef LicSrvRequest_<ContainerAllocator> Type;

  LicSrvRequest_()
    : ser_id()
    , dev_id()  {
    }
  LicSrvRequest_(const ContainerAllocator& _alloc)
    : ser_id(_alloc)
    , dev_id(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _ser_id_type;
  _ser_id_type ser_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _dev_id_type;
  _dev_id_type dev_id;





  typedef boost::shared_ptr< ::flyt_ms::LicSrvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::flyt_ms::LicSrvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LicSrvRequest_

typedef ::flyt_ms::LicSrvRequest_<std::allocator<void> > LicSrvRequest;

typedef boost::shared_ptr< ::flyt_ms::LicSrvRequest > LicSrvRequestPtr;
typedef boost::shared_ptr< ::flyt_ms::LicSrvRequest const> LicSrvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::flyt_ms::LicSrvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::flyt_ms::LicSrvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace flyt_ms

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::flyt_ms::LicSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::flyt_ms::LicSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::flyt_ms::LicSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::flyt_ms::LicSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::flyt_ms::LicSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::flyt_ms::LicSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::flyt_ms::LicSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b2b7e214dd61b1b1c588b9f7b11d76d8";
  }

  static const char* value(const ::flyt_ms::LicSrvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb2b7e214dd61b1b1ULL;
  static const uint64_t static_value2 = 0xc588b9f7b11d76d8ULL;
};

template<class ContainerAllocator>
struct DataType< ::flyt_ms::LicSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "flyt_ms/LicSrvRequest";
  }

  static const char* value(const ::flyt_ms::LicSrvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::flyt_ms::LicSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string ser_id\n\
string dev_id\n\
";
  }

  static const char* value(const ::flyt_ms::LicSrvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::flyt_ms::LicSrvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ser_id);
      stream.next(m.dev_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LicSrvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::flyt_ms::LicSrvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::flyt_ms::LicSrvRequest_<ContainerAllocator>& v)
  {
    s << indent << "ser_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.ser_id);
    s << indent << "dev_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.dev_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FLYT_MS_MESSAGE_LICSRVREQUEST_H
// Generated by gencpp from file vision_apps/GetCamListResponse.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_GETCAMLISTRESPONSE_H
#define VISION_APPS_MESSAGE_GETCAMLISTRESPONSE_H


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
struct GetCamListResponse_
{
  typedef GetCamListResponse_<ContainerAllocator> Type;

  GetCamListResponse_()
    : camera_aliases()  {
    }
  GetCamListResponse_(const ContainerAllocator& _alloc)
    : camera_aliases(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _camera_aliases_type;
  _camera_aliases_type camera_aliases;





  typedef boost::shared_ptr< ::vision_apps::GetCamListResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vision_apps::GetCamListResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetCamListResponse_

typedef ::vision_apps::GetCamListResponse_<std::allocator<void> > GetCamListResponse;

typedef boost::shared_ptr< ::vision_apps::GetCamListResponse > GetCamListResponsePtr;
typedef boost::shared_ptr< ::vision_apps::GetCamListResponse const> GetCamListResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vision_apps::GetCamListResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vision_apps::GetCamListResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::vision_apps::GetCamListResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vision_apps::GetCamListResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_apps::GetCamListResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_apps::GetCamListResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_apps::GetCamListResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_apps::GetCamListResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vision_apps::GetCamListResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9902e78c4ccd49c8d03303243efb89fc";
  }

  static const char* value(const ::vision_apps::GetCamListResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9902e78c4ccd49c8ULL;
  static const uint64_t static_value2 = 0xd03303243efb89fcULL;
};

template<class ContainerAllocator>
struct DataType< ::vision_apps::GetCamListResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vision_apps/GetCamListResponse";
  }

  static const char* value(const ::vision_apps::GetCamListResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vision_apps::GetCamListResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] camera_aliases\n\
\n\
";
  }

  static const char* value(const ::vision_apps::GetCamListResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vision_apps::GetCamListResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.camera_aliases);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetCamListResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vision_apps::GetCamListResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vision_apps::GetCamListResponse_<ContainerAllocator>& v)
  {
    s << indent << "camera_aliases[]" << std::endl;
    for (size_t i = 0; i < v.camera_aliases.size(); ++i)
    {
      s << indent << "  camera_aliases[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.camera_aliases[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISION_APPS_MESSAGE_GETCAMLISTRESPONSE_H
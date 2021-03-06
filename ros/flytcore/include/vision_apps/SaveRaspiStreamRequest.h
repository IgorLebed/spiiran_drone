// Generated by gencpp from file vision_apps/SaveRaspiStreamRequest.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_SAVERASPISTREAMREQUEST_H
#define VISION_APPS_MESSAGE_SAVERASPISTREAMREQUEST_H


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
struct SaveRaspiStreamRequest_
{
  typedef SaveRaspiStreamRequest_<ContainerAllocator> Type;

  SaveRaspiStreamRequest_()
    : image_width(0)
    , image_height(0)
    , framerate(0)
    , brightness(0)
    , saturation(0)
    , flip(false)  {
    }
  SaveRaspiStreamRequest_(const ContainerAllocator& _alloc)
    : image_width(0)
    , image_height(0)
    , framerate(0)
    , brightness(0)
    , saturation(0)
    , flip(false)  {
  (void)_alloc;
    }



   typedef int64_t _image_width_type;
  _image_width_type image_width;

   typedef int64_t _image_height_type;
  _image_height_type image_height;

   typedef int64_t _framerate_type;
  _framerate_type framerate;

   typedef int64_t _brightness_type;
  _brightness_type brightness;

   typedef int64_t _saturation_type;
  _saturation_type saturation;

   typedef uint8_t _flip_type;
  _flip_type flip;





  typedef boost::shared_ptr< ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SaveRaspiStreamRequest_

typedef ::vision_apps::SaveRaspiStreamRequest_<std::allocator<void> > SaveRaspiStreamRequest;

typedef boost::shared_ptr< ::vision_apps::SaveRaspiStreamRequest > SaveRaspiStreamRequestPtr;
typedef boost::shared_ptr< ::vision_apps::SaveRaspiStreamRequest const> SaveRaspiStreamRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a882567248ccbc61befc65b85423896f";
  }

  static const char* value(const ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa882567248ccbc61ULL;
  static const uint64_t static_value2 = 0xbefc65b85423896fULL;
};

template<class ContainerAllocator>
struct DataType< ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vision_apps/SaveRaspiStreamRequest";
  }

  static const char* value(const ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64  image_width\n\
int64  image_height\n\
int64  framerate\n\
int64  brightness\n\
int64  saturation\n\
bool 	 flip\n\
";
  }

  static const char* value(const ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.image_width);
      stream.next(m.image_height);
      stream.next(m.framerate);
      stream.next(m.brightness);
      stream.next(m.saturation);
      stream.next(m.flip);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SaveRaspiStreamRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vision_apps::SaveRaspiStreamRequest_<ContainerAllocator>& v)
  {
    s << indent << "image_width: ";
    Printer<int64_t>::stream(s, indent + "  ", v.image_width);
    s << indent << "image_height: ";
    Printer<int64_t>::stream(s, indent + "  ", v.image_height);
    s << indent << "framerate: ";
    Printer<int64_t>::stream(s, indent + "  ", v.framerate);
    s << indent << "brightness: ";
    Printer<int64_t>::stream(s, indent + "  ", v.brightness);
    s << indent << "saturation: ";
    Printer<int64_t>::stream(s, indent + "  ", v.saturation);
    s << indent << "flip: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.flip);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISION_APPS_MESSAGE_SAVERASPISTREAMREQUEST_H

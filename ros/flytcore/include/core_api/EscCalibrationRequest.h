// Generated by gencpp from file core_api/EscCalibrationRequest.msg
// DO NOT EDIT!


#ifndef CORE_API_MESSAGE_ESCCALIBRATIONREQUEST_H
#define CORE_API_MESSAGE_ESCCALIBRATIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace core_api
{
template <class ContainerAllocator>
struct EscCalibrationRequest_
{
  typedef EscCalibrationRequest_<ContainerAllocator> Type;

  EscCalibrationRequest_()
    : pwm_min(0.0)
    , pwm_max(0.0)
    , num_of_actuators(0)
    , calibration_state(0)  {
    }
  EscCalibrationRequest_(const ContainerAllocator& _alloc)
    : pwm_min(0.0)
    , pwm_max(0.0)
    , num_of_actuators(0)
    , calibration_state(0)  {
  (void)_alloc;
    }



   typedef float _pwm_min_type;
  _pwm_min_type pwm_min;

   typedef float _pwm_max_type;
  _pwm_max_type pwm_max;

   typedef int8_t _num_of_actuators_type;
  _num_of_actuators_type num_of_actuators;

   typedef int8_t _calibration_state_type;
  _calibration_state_type calibration_state;



  enum {
    CALIBRATION_STATE_SET_PWM_MAX = 1,
    CALIBRATION_STATE_SET_PWM_MIN = 2,
    CALIBRATION_STATE_CANCEL = 3,
  };


  typedef boost::shared_ptr< ::core_api::EscCalibrationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::core_api::EscCalibrationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct EscCalibrationRequest_

typedef ::core_api::EscCalibrationRequest_<std::allocator<void> > EscCalibrationRequest;

typedef boost::shared_ptr< ::core_api::EscCalibrationRequest > EscCalibrationRequestPtr;
typedef boost::shared_ptr< ::core_api::EscCalibrationRequest const> EscCalibrationRequestConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::core_api::EscCalibrationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::core_api::EscCalibrationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace core_api

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'core_api': ['/home/flytpod/flytos/src/flytOS/flyt_core/core_api/core_api/msg/param', '/home/flytpod/flytos/src/flytOS/flyt_core/core_api/core_api/msg/param'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'diagnostic_msgs': ['/opt/ros/kinetic/share/diagnostic_msgs/cmake/../msg'], 'mavros_msgs': ['/home/flytpod/flytos/src/flytOS/flyt_core/core_nodes/mavros/mavros_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::core_api::EscCalibrationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::core_api::EscCalibrationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::core_api::EscCalibrationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::core_api::EscCalibrationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::core_api::EscCalibrationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::core_api::EscCalibrationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::core_api::EscCalibrationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "80dcc1436352653d31aebe0d837c992f";
  }

  static const char* value(const ::core_api::EscCalibrationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x80dcc1436352653dULL;
  static const uint64_t static_value2 = 0x31aebe0d837c992fULL;
};

template<class ContainerAllocator>
struct DataType< ::core_api::EscCalibrationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "core_api/EscCalibrationRequest";
  }

  static const char* value(const ::core_api::EscCalibrationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::core_api::EscCalibrationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 CALIBRATION_STATE_SET_PWM_MAX = 1\n\
int8 CALIBRATION_STATE_SET_PWM_MIN = 2\n\
int8 CALIBRATION_STATE_CANCEL = 3\n\
float32 pwm_min\n\
float32 pwm_max\n\
int8 num_of_actuators\n\
int8 calibration_state\n\
";
  }

  static const char* value(const ::core_api::EscCalibrationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::core_api::EscCalibrationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pwm_min);
      stream.next(m.pwm_max);
      stream.next(m.num_of_actuators);
      stream.next(m.calibration_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EscCalibrationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::core_api::EscCalibrationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::core_api::EscCalibrationRequest_<ContainerAllocator>& v)
  {
    s << indent << "pwm_min: ";
    Printer<float>::stream(s, indent + "  ", v.pwm_min);
    s << indent << "pwm_max: ";
    Printer<float>::stream(s, indent + "  ", v.pwm_max);
    s << indent << "num_of_actuators: ";
    Printer<int8_t>::stream(s, indent + "  ", v.num_of_actuators);
    s << indent << "calibration_state: ";
    Printer<int8_t>::stream(s, indent + "  ", v.calibration_state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CORE_API_MESSAGE_ESCCALIBRATIONREQUEST_H
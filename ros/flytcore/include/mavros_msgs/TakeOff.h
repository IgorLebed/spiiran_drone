// Generated by gencpp from file mavros_msgs/TakeOff.msg
// DO NOT EDIT!


#ifndef MAVROS_MSGS_MESSAGE_TAKEOFF_H
#define MAVROS_MSGS_MESSAGE_TAKEOFF_H

#include <ros/service_traits.h>


#include <mavros_msgs/TakeOffRequest.h>
#include <mavros_msgs/TakeOffResponse.h>


namespace mavros_msgs
{

struct TakeOff
{

typedef TakeOffRequest Request;
typedef TakeOffResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TakeOff
} // namespace mavros_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mavros_msgs::TakeOff > {
  static const char* value()
  {
    return "655cad7ef82e583fafa09ef2e62b62c5";
  }

  static const char* value(const ::mavros_msgs::TakeOff&) { return value(); }
};

template<>
struct DataType< ::mavros_msgs::TakeOff > {
  static const char* value()
  {
    return "mavros_msgs/TakeOff";
  }

  static const char* value(const ::mavros_msgs::TakeOff&) { return value(); }
};


// service_traits::MD5Sum< ::mavros_msgs::TakeOffRequest> should match 
// service_traits::MD5Sum< ::mavros_msgs::TakeOff > 
template<>
struct MD5Sum< ::mavros_msgs::TakeOffRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mavros_msgs::TakeOff >::value();
  }
  static const char* value(const ::mavros_msgs::TakeOffRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mavros_msgs::TakeOffRequest> should match 
// service_traits::DataType< ::mavros_msgs::TakeOff > 
template<>
struct DataType< ::mavros_msgs::TakeOffRequest>
{
  static const char* value()
  {
    return DataType< ::mavros_msgs::TakeOff >::value();
  }
  static const char* value(const ::mavros_msgs::TakeOffRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mavros_msgs::TakeOffResponse> should match 
// service_traits::MD5Sum< ::mavros_msgs::TakeOff > 
template<>
struct MD5Sum< ::mavros_msgs::TakeOffResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mavros_msgs::TakeOff >::value();
  }
  static const char* value(const ::mavros_msgs::TakeOffResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mavros_msgs::TakeOffResponse> should match 
// service_traits::DataType< ::mavros_msgs::TakeOff > 
template<>
struct DataType< ::mavros_msgs::TakeOffResponse>
{
  static const char* value()
  {
    return DataType< ::mavros_msgs::TakeOff >::value();
  }
  static const char* value(const ::mavros_msgs::TakeOffResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MAVROS_MSGS_MESSAGE_TAKEOFF_H
// Generated by gencpp from file mavros_msgs/LogCancelReq.msg
// DO NOT EDIT!


#ifndef MAVROS_MSGS_MESSAGE_LOGCANCELREQ_H
#define MAVROS_MSGS_MESSAGE_LOGCANCELREQ_H

#include <ros/service_traits.h>


#include <mavros_msgs/LogCancelReqRequest.h>
#include <mavros_msgs/LogCancelReqResponse.h>


namespace mavros_msgs
{

struct LogCancelReq
{

typedef LogCancelReqRequest Request;
typedef LogCancelReqResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LogCancelReq
} // namespace mavros_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mavros_msgs::LogCancelReq > {
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::mavros_msgs::LogCancelReq&) { return value(); }
};

template<>
struct DataType< ::mavros_msgs::LogCancelReq > {
  static const char* value()
  {
    return "mavros_msgs/LogCancelReq";
  }

  static const char* value(const ::mavros_msgs::LogCancelReq&) { return value(); }
};


// service_traits::MD5Sum< ::mavros_msgs::LogCancelReqRequest> should match 
// service_traits::MD5Sum< ::mavros_msgs::LogCancelReq > 
template<>
struct MD5Sum< ::mavros_msgs::LogCancelReqRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mavros_msgs::LogCancelReq >::value();
  }
  static const char* value(const ::mavros_msgs::LogCancelReqRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mavros_msgs::LogCancelReqRequest> should match 
// service_traits::DataType< ::mavros_msgs::LogCancelReq > 
template<>
struct DataType< ::mavros_msgs::LogCancelReqRequest>
{
  static const char* value()
  {
    return DataType< ::mavros_msgs::LogCancelReq >::value();
  }
  static const char* value(const ::mavros_msgs::LogCancelReqRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mavros_msgs::LogCancelReqResponse> should match 
// service_traits::MD5Sum< ::mavros_msgs::LogCancelReq > 
template<>
struct MD5Sum< ::mavros_msgs::LogCancelReqResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mavros_msgs::LogCancelReq >::value();
  }
  static const char* value(const ::mavros_msgs::LogCancelReqResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mavros_msgs::LogCancelReqResponse> should match 
// service_traits::DataType< ::mavros_msgs::LogCancelReq > 
template<>
struct DataType< ::mavros_msgs::LogCancelReqResponse>
{
  static const char* value()
  {
    return DataType< ::mavros_msgs::LogCancelReq >::value();
  }
  static const char* value(const ::mavros_msgs::LogCancelReqResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MAVROS_MSGS_MESSAGE_LOGCANCELREQ_H

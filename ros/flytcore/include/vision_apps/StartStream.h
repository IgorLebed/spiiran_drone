// Generated by gencpp from file vision_apps/StartStream.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_STARTSTREAM_H
#define VISION_APPS_MESSAGE_STARTSTREAM_H

#include <ros/service_traits.h>


#include <vision_apps/StartStreamRequest.h>
#include <vision_apps/StartStreamResponse.h>


namespace vision_apps
{

struct StartStream
{

typedef StartStreamRequest Request;
typedef StartStreamResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct StartStream
} // namespace vision_apps


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vision_apps::StartStream > {
  static const char* value()
  {
    return "e80b3fbc60a44ad81af9ba0208e68957";
  }

  static const char* value(const ::vision_apps::StartStream&) { return value(); }
};

template<>
struct DataType< ::vision_apps::StartStream > {
  static const char* value()
  {
    return "vision_apps/StartStream";
  }

  static const char* value(const ::vision_apps::StartStream&) { return value(); }
};


// service_traits::MD5Sum< ::vision_apps::StartStreamRequest> should match 
// service_traits::MD5Sum< ::vision_apps::StartStream > 
template<>
struct MD5Sum< ::vision_apps::StartStreamRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::StartStream >::value();
  }
  static const char* value(const ::vision_apps::StartStreamRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::StartStreamRequest> should match 
// service_traits::DataType< ::vision_apps::StartStream > 
template<>
struct DataType< ::vision_apps::StartStreamRequest>
{
  static const char* value()
  {
    return DataType< ::vision_apps::StartStream >::value();
  }
  static const char* value(const ::vision_apps::StartStreamRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vision_apps::StartStreamResponse> should match 
// service_traits::MD5Sum< ::vision_apps::StartStream > 
template<>
struct MD5Sum< ::vision_apps::StartStreamResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::StartStream >::value();
  }
  static const char* value(const ::vision_apps::StartStreamResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::StartStreamResponse> should match 
// service_traits::DataType< ::vision_apps::StartStream > 
template<>
struct DataType< ::vision_apps::StartStreamResponse>
{
  static const char* value()
  {
    return DataType< ::vision_apps::StartStream >::value();
  }
  static const char* value(const ::vision_apps::StartStreamResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VISION_APPS_MESSAGE_STARTSTREAM_H

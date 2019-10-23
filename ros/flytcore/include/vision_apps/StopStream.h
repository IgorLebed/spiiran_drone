// Generated by gencpp from file vision_apps/StopStream.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_STOPSTREAM_H
#define VISION_APPS_MESSAGE_STOPSTREAM_H

#include <ros/service_traits.h>


#include <vision_apps/StopStreamRequest.h>
#include <vision_apps/StopStreamResponse.h>


namespace vision_apps
{

struct StopStream
{

typedef StopStreamRequest Request;
typedef StopStreamResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct StopStream
} // namespace vision_apps


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vision_apps::StopStream > {
  static const char* value()
  {
    return "e68f3fbbba669be19f5e738564807335";
  }

  static const char* value(const ::vision_apps::StopStream&) { return value(); }
};

template<>
struct DataType< ::vision_apps::StopStream > {
  static const char* value()
  {
    return "vision_apps/StopStream";
  }

  static const char* value(const ::vision_apps::StopStream&) { return value(); }
};


// service_traits::MD5Sum< ::vision_apps::StopStreamRequest> should match 
// service_traits::MD5Sum< ::vision_apps::StopStream > 
template<>
struct MD5Sum< ::vision_apps::StopStreamRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::StopStream >::value();
  }
  static const char* value(const ::vision_apps::StopStreamRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::StopStreamRequest> should match 
// service_traits::DataType< ::vision_apps::StopStream > 
template<>
struct DataType< ::vision_apps::StopStreamRequest>
{
  static const char* value()
  {
    return DataType< ::vision_apps::StopStream >::value();
  }
  static const char* value(const ::vision_apps::StopStreamRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vision_apps::StopStreamResponse> should match 
// service_traits::MD5Sum< ::vision_apps::StopStream > 
template<>
struct MD5Sum< ::vision_apps::StopStreamResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::StopStream >::value();
  }
  static const char* value(const ::vision_apps::StopStreamResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::StopStreamResponse> should match 
// service_traits::DataType< ::vision_apps::StopStream > 
template<>
struct DataType< ::vision_apps::StopStreamResponse>
{
  static const char* value()
  {
    return DataType< ::vision_apps::StopStream >::value();
  }
  static const char* value(const ::vision_apps::StopStreamResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VISION_APPS_MESSAGE_STOPSTREAM_H
// Generated by gencpp from file vision_apps/GetLandingStatus.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_GETLANDINGSTATUS_H
#define VISION_APPS_MESSAGE_GETLANDINGSTATUS_H

#include <ros/service_traits.h>


#include <vision_apps/GetLandingStatusRequest.h>
#include <vision_apps/GetLandingStatusResponse.h>


namespace vision_apps
{

struct GetLandingStatus
{

typedef GetLandingStatusRequest Request;
typedef GetLandingStatusResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetLandingStatus
} // namespace vision_apps


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vision_apps::GetLandingStatus > {
  static const char* value()
  {
    return "0d2f2420d57aa0f674fd993ccf46cc89";
  }

  static const char* value(const ::vision_apps::GetLandingStatus&) { return value(); }
};

template<>
struct DataType< ::vision_apps::GetLandingStatus > {
  static const char* value()
  {
    return "vision_apps/GetLandingStatus";
  }

  static const char* value(const ::vision_apps::GetLandingStatus&) { return value(); }
};


// service_traits::MD5Sum< ::vision_apps::GetLandingStatusRequest> should match 
// service_traits::MD5Sum< ::vision_apps::GetLandingStatus > 
template<>
struct MD5Sum< ::vision_apps::GetLandingStatusRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::GetLandingStatus >::value();
  }
  static const char* value(const ::vision_apps::GetLandingStatusRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::GetLandingStatusRequest> should match 
// service_traits::DataType< ::vision_apps::GetLandingStatus > 
template<>
struct DataType< ::vision_apps::GetLandingStatusRequest>
{
  static const char* value()
  {
    return DataType< ::vision_apps::GetLandingStatus >::value();
  }
  static const char* value(const ::vision_apps::GetLandingStatusRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vision_apps::GetLandingStatusResponse> should match 
// service_traits::MD5Sum< ::vision_apps::GetLandingStatus > 
template<>
struct MD5Sum< ::vision_apps::GetLandingStatusResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::GetLandingStatus >::value();
  }
  static const char* value(const ::vision_apps::GetLandingStatusResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::GetLandingStatusResponse> should match 
// service_traits::DataType< ::vision_apps::GetLandingStatus > 
template<>
struct DataType< ::vision_apps::GetLandingStatusResponse>
{
  static const char* value()
  {
    return DataType< ::vision_apps::GetLandingStatus >::value();
  }
  static const char* value(const ::vision_apps::GetLandingStatusResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VISION_APPS_MESSAGE_GETLANDINGSTATUS_H
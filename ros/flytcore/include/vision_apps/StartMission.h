// Generated by gencpp from file vision_apps/StartMission.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_STARTMISSION_H
#define VISION_APPS_MESSAGE_STARTMISSION_H

#include <ros/service_traits.h>


#include <vision_apps/StartMissionRequest.h>
#include <vision_apps/StartMissionResponse.h>


namespace vision_apps
{

struct StartMission
{

typedef StartMissionRequest Request;
typedef StartMissionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct StartMission
} // namespace vision_apps


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vision_apps::StartMission > {
  static const char* value()
  {
    return "26e070e4fb1ebc4987d4d71d8e0de7e5";
  }

  static const char* value(const ::vision_apps::StartMission&) { return value(); }
};

template<>
struct DataType< ::vision_apps::StartMission > {
  static const char* value()
  {
    return "vision_apps/StartMission";
  }

  static const char* value(const ::vision_apps::StartMission&) { return value(); }
};


// service_traits::MD5Sum< ::vision_apps::StartMissionRequest> should match 
// service_traits::MD5Sum< ::vision_apps::StartMission > 
template<>
struct MD5Sum< ::vision_apps::StartMissionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::StartMission >::value();
  }
  static const char* value(const ::vision_apps::StartMissionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::StartMissionRequest> should match 
// service_traits::DataType< ::vision_apps::StartMission > 
template<>
struct DataType< ::vision_apps::StartMissionRequest>
{
  static const char* value()
  {
    return DataType< ::vision_apps::StartMission >::value();
  }
  static const char* value(const ::vision_apps::StartMissionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vision_apps::StartMissionResponse> should match 
// service_traits::MD5Sum< ::vision_apps::StartMission > 
template<>
struct MD5Sum< ::vision_apps::StartMissionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::StartMission >::value();
  }
  static const char* value(const ::vision_apps::StartMissionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::StartMissionResponse> should match 
// service_traits::DataType< ::vision_apps::StartMission > 
template<>
struct DataType< ::vision_apps::StartMissionResponse>
{
  static const char* value()
  {
    return DataType< ::vision_apps::StartMission >::value();
  }
  static const char* value(const ::vision_apps::StartMissionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VISION_APPS_MESSAGE_STARTMISSION_H

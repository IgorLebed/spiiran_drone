// Generated by gencpp from file vision_apps/StopMission.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_STOPMISSION_H
#define VISION_APPS_MESSAGE_STOPMISSION_H

#include <ros/service_traits.h>


#include <vision_apps/StopMissionRequest.h>
#include <vision_apps/StopMissionResponse.h>


namespace vision_apps
{

struct StopMission
{

typedef StopMissionRequest Request;
typedef StopMissionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct StopMission
} // namespace vision_apps


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vision_apps::StopMission > {
  static const char* value()
  {
    return "4ad76664b0717ddbf6142456d7398288";
  }

  static const char* value(const ::vision_apps::StopMission&) { return value(); }
};

template<>
struct DataType< ::vision_apps::StopMission > {
  static const char* value()
  {
    return "vision_apps/StopMission";
  }

  static const char* value(const ::vision_apps::StopMission&) { return value(); }
};


// service_traits::MD5Sum< ::vision_apps::StopMissionRequest> should match 
// service_traits::MD5Sum< ::vision_apps::StopMission > 
template<>
struct MD5Sum< ::vision_apps::StopMissionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::StopMission >::value();
  }
  static const char* value(const ::vision_apps::StopMissionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::StopMissionRequest> should match 
// service_traits::DataType< ::vision_apps::StopMission > 
template<>
struct DataType< ::vision_apps::StopMissionRequest>
{
  static const char* value()
  {
    return DataType< ::vision_apps::StopMission >::value();
  }
  static const char* value(const ::vision_apps::StopMissionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vision_apps::StopMissionResponse> should match 
// service_traits::MD5Sum< ::vision_apps::StopMission > 
template<>
struct MD5Sum< ::vision_apps::StopMissionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::StopMission >::value();
  }
  static const char* value(const ::vision_apps::StopMissionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::StopMissionResponse> should match 
// service_traits::DataType< ::vision_apps::StopMission > 
template<>
struct DataType< ::vision_apps::StopMissionResponse>
{
  static const char* value()
  {
    return DataType< ::vision_apps::StopMission >::value();
  }
  static const char* value(const ::vision_apps::StopMissionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VISION_APPS_MESSAGE_STOPMISSION_H

// Generated by gencpp from file core_api/WaypointPause.msg
// DO NOT EDIT!


#ifndef CORE_API_MESSAGE_WAYPOINTPAUSE_H
#define CORE_API_MESSAGE_WAYPOINTPAUSE_H

#include <ros/service_traits.h>


#include <core_api/WaypointPauseRequest.h>
#include <core_api/WaypointPauseResponse.h>


namespace core_api
{

struct WaypointPause
{

typedef WaypointPauseRequest Request;
typedef WaypointPauseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct WaypointPause
} // namespace core_api


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::core_api::WaypointPause > {
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::core_api::WaypointPause&) { return value(); }
};

template<>
struct DataType< ::core_api::WaypointPause > {
  static const char* value()
  {
    return "core_api/WaypointPause";
  }

  static const char* value(const ::core_api::WaypointPause&) { return value(); }
};


// service_traits::MD5Sum< ::core_api::WaypointPauseRequest> should match 
// service_traits::MD5Sum< ::core_api::WaypointPause > 
template<>
struct MD5Sum< ::core_api::WaypointPauseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::WaypointPause >::value();
  }
  static const char* value(const ::core_api::WaypointPauseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::WaypointPauseRequest> should match 
// service_traits::DataType< ::core_api::WaypointPause > 
template<>
struct DataType< ::core_api::WaypointPauseRequest>
{
  static const char* value()
  {
    return DataType< ::core_api::WaypointPause >::value();
  }
  static const char* value(const ::core_api::WaypointPauseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::core_api::WaypointPauseResponse> should match 
// service_traits::MD5Sum< ::core_api::WaypointPause > 
template<>
struct MD5Sum< ::core_api::WaypointPauseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::WaypointPause >::value();
  }
  static const char* value(const ::core_api::WaypointPauseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::WaypointPauseResponse> should match 
// service_traits::DataType< ::core_api::WaypointPause > 
template<>
struct DataType< ::core_api::WaypointPauseResponse>
{
  static const char* value()
  {
    return DataType< ::core_api::WaypointPause >::value();
  }
  static const char* value(const ::core_api::WaypointPauseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CORE_API_MESSAGE_WAYPOINTPAUSE_H

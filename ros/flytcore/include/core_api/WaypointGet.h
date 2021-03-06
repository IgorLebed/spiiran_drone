// Generated by gencpp from file core_api/WaypointGet.msg
// DO NOT EDIT!


#ifndef CORE_API_MESSAGE_WAYPOINTGET_H
#define CORE_API_MESSAGE_WAYPOINTGET_H

#include <ros/service_traits.h>


#include <core_api/WaypointGetRequest.h>
#include <core_api/WaypointGetResponse.h>


namespace core_api
{

struct WaypointGet
{

typedef WaypointGetRequest Request;
typedef WaypointGetResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct WaypointGet
} // namespace core_api


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::core_api::WaypointGet > {
  static const char* value()
  {
    return "b38735166bb040ca6a9bf63e5c480555";
  }

  static const char* value(const ::core_api::WaypointGet&) { return value(); }
};

template<>
struct DataType< ::core_api::WaypointGet > {
  static const char* value()
  {
    return "core_api/WaypointGet";
  }

  static const char* value(const ::core_api::WaypointGet&) { return value(); }
};


// service_traits::MD5Sum< ::core_api::WaypointGetRequest> should match 
// service_traits::MD5Sum< ::core_api::WaypointGet > 
template<>
struct MD5Sum< ::core_api::WaypointGetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::WaypointGet >::value();
  }
  static const char* value(const ::core_api::WaypointGetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::WaypointGetRequest> should match 
// service_traits::DataType< ::core_api::WaypointGet > 
template<>
struct DataType< ::core_api::WaypointGetRequest>
{
  static const char* value()
  {
    return DataType< ::core_api::WaypointGet >::value();
  }
  static const char* value(const ::core_api::WaypointGetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::core_api::WaypointGetResponse> should match 
// service_traits::MD5Sum< ::core_api::WaypointGet > 
template<>
struct MD5Sum< ::core_api::WaypointGetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::WaypointGet >::value();
  }
  static const char* value(const ::core_api::WaypointGetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::WaypointGetResponse> should match 
// service_traits::DataType< ::core_api::WaypointGet > 
template<>
struct DataType< ::core_api::WaypointGetResponse>
{
  static const char* value()
  {
    return DataType< ::core_api::WaypointGet >::value();
  }
  static const char* value(const ::core_api::WaypointGetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CORE_API_MESSAGE_WAYPOINTGET_H

// Generated by gencpp from file core_api/WaypointSet.msg
// DO NOT EDIT!


#ifndef CORE_API_MESSAGE_WAYPOINTSET_H
#define CORE_API_MESSAGE_WAYPOINTSET_H

#include <ros/service_traits.h>


#include <core_api/WaypointSetRequest.h>
#include <core_api/WaypointSetResponse.h>


namespace core_api
{

struct WaypointSet
{

typedef WaypointSetRequest Request;
typedef WaypointSetResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct WaypointSet
} // namespace core_api


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::core_api::WaypointSet > {
  static const char* value()
  {
    return "3f085b910f9f393c0159cd4cdfc61799";
  }

  static const char* value(const ::core_api::WaypointSet&) { return value(); }
};

template<>
struct DataType< ::core_api::WaypointSet > {
  static const char* value()
  {
    return "core_api/WaypointSet";
  }

  static const char* value(const ::core_api::WaypointSet&) { return value(); }
};


// service_traits::MD5Sum< ::core_api::WaypointSetRequest> should match 
// service_traits::MD5Sum< ::core_api::WaypointSet > 
template<>
struct MD5Sum< ::core_api::WaypointSetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::WaypointSet >::value();
  }
  static const char* value(const ::core_api::WaypointSetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::WaypointSetRequest> should match 
// service_traits::DataType< ::core_api::WaypointSet > 
template<>
struct DataType< ::core_api::WaypointSetRequest>
{
  static const char* value()
  {
    return DataType< ::core_api::WaypointSet >::value();
  }
  static const char* value(const ::core_api::WaypointSetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::core_api::WaypointSetResponse> should match 
// service_traits::MD5Sum< ::core_api::WaypointSet > 
template<>
struct MD5Sum< ::core_api::WaypointSetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::WaypointSet >::value();
  }
  static const char* value(const ::core_api::WaypointSetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::WaypointSetResponse> should match 
// service_traits::DataType< ::core_api::WaypointSet > 
template<>
struct DataType< ::core_api::WaypointSetResponse>
{
  static const char* value()
  {
    return DataType< ::core_api::WaypointSet >::value();
  }
  static const char* value(const ::core_api::WaypointSetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CORE_API_MESSAGE_WAYPOINTSET_H
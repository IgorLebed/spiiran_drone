// Generated by gencpp from file core_api/GeofenceGet.msg
// DO NOT EDIT!


#ifndef CORE_API_MESSAGE_GEOFENCEGET_H
#define CORE_API_MESSAGE_GEOFENCEGET_H

#include <ros/service_traits.h>


#include <core_api/GeofenceGetRequest.h>
#include <core_api/GeofenceGetResponse.h>


namespace core_api
{

struct GeofenceGet
{

typedef GeofenceGetRequest Request;
typedef GeofenceGetResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GeofenceGet
} // namespace core_api


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::core_api::GeofenceGet > {
  static const char* value()
  {
    return "a90ed9d96938845509f17e1cccecd160";
  }

  static const char* value(const ::core_api::GeofenceGet&) { return value(); }
};

template<>
struct DataType< ::core_api::GeofenceGet > {
  static const char* value()
  {
    return "core_api/GeofenceGet";
  }

  static const char* value(const ::core_api::GeofenceGet&) { return value(); }
};


// service_traits::MD5Sum< ::core_api::GeofenceGetRequest> should match 
// service_traits::MD5Sum< ::core_api::GeofenceGet > 
template<>
struct MD5Sum< ::core_api::GeofenceGetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::GeofenceGet >::value();
  }
  static const char* value(const ::core_api::GeofenceGetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::GeofenceGetRequest> should match 
// service_traits::DataType< ::core_api::GeofenceGet > 
template<>
struct DataType< ::core_api::GeofenceGetRequest>
{
  static const char* value()
  {
    return DataType< ::core_api::GeofenceGet >::value();
  }
  static const char* value(const ::core_api::GeofenceGetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::core_api::GeofenceGetResponse> should match 
// service_traits::MD5Sum< ::core_api::GeofenceGet > 
template<>
struct MD5Sum< ::core_api::GeofenceGetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::GeofenceGet >::value();
  }
  static const char* value(const ::core_api::GeofenceGetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::GeofenceGetResponse> should match 
// service_traits::DataType< ::core_api::GeofenceGet > 
template<>
struct DataType< ::core_api::GeofenceGetResponse>
{
  static const char* value()
  {
    return DataType< ::core_api::GeofenceGet >::value();
  }
  static const char* value(const ::core_api::GeofenceGetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CORE_API_MESSAGE_GEOFENCEGET_H
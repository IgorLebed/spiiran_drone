// Generated by gencpp from file core_api/Land.msg
// DO NOT EDIT!


#ifndef CORE_API_MESSAGE_LAND_H
#define CORE_API_MESSAGE_LAND_H

#include <ros/service_traits.h>


#include <core_api/LandRequest.h>
#include <core_api/LandResponse.h>


namespace core_api
{

struct Land
{

typedef LandRequest Request;
typedef LandResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Land
} // namespace core_api


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::core_api::Land > {
  static const char* value()
  {
    return "69de5fed7bf47bdde23383e024152f0f";
  }

  static const char* value(const ::core_api::Land&) { return value(); }
};

template<>
struct DataType< ::core_api::Land > {
  static const char* value()
  {
    return "core_api/Land";
  }

  static const char* value(const ::core_api::Land&) { return value(); }
};


// service_traits::MD5Sum< ::core_api::LandRequest> should match 
// service_traits::MD5Sum< ::core_api::Land > 
template<>
struct MD5Sum< ::core_api::LandRequest>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::Land >::value();
  }
  static const char* value(const ::core_api::LandRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::LandRequest> should match 
// service_traits::DataType< ::core_api::Land > 
template<>
struct DataType< ::core_api::LandRequest>
{
  static const char* value()
  {
    return DataType< ::core_api::Land >::value();
  }
  static const char* value(const ::core_api::LandRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::core_api::LandResponse> should match 
// service_traits::MD5Sum< ::core_api::Land > 
template<>
struct MD5Sum< ::core_api::LandResponse>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::Land >::value();
  }
  static const char* value(const ::core_api::LandResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::LandResponse> should match 
// service_traits::DataType< ::core_api::Land > 
template<>
struct DataType< ::core_api::LandResponse>
{
  static const char* value()
  {
    return DataType< ::core_api::Land >::value();
  }
  static const char* value(const ::core_api::LandResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CORE_API_MESSAGE_LAND_H
// Generated by gencpp from file core_api/BrightPiLED.msg
// DO NOT EDIT!


#ifndef CORE_API_MESSAGE_BRIGHTPILED_H
#define CORE_API_MESSAGE_BRIGHTPILED_H

#include <ros/service_traits.h>


#include <core_api/BrightPiLEDRequest.h>
#include <core_api/BrightPiLEDResponse.h>


namespace core_api
{

struct BrightPiLED
{

typedef BrightPiLEDRequest Request;
typedef BrightPiLEDResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct BrightPiLED
} // namespace core_api


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::core_api::BrightPiLED > {
  static const char* value()
  {
    return "17e462bdcd84d82b4992ac5262b3fcf8";
  }

  static const char* value(const ::core_api::BrightPiLED&) { return value(); }
};

template<>
struct DataType< ::core_api::BrightPiLED > {
  static const char* value()
  {
    return "core_api/BrightPiLED";
  }

  static const char* value(const ::core_api::BrightPiLED&) { return value(); }
};


// service_traits::MD5Sum< ::core_api::BrightPiLEDRequest> should match 
// service_traits::MD5Sum< ::core_api::BrightPiLED > 
template<>
struct MD5Sum< ::core_api::BrightPiLEDRequest>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::BrightPiLED >::value();
  }
  static const char* value(const ::core_api::BrightPiLEDRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::BrightPiLEDRequest> should match 
// service_traits::DataType< ::core_api::BrightPiLED > 
template<>
struct DataType< ::core_api::BrightPiLEDRequest>
{
  static const char* value()
  {
    return DataType< ::core_api::BrightPiLED >::value();
  }
  static const char* value(const ::core_api::BrightPiLEDRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::core_api::BrightPiLEDResponse> should match 
// service_traits::MD5Sum< ::core_api::BrightPiLED > 
template<>
struct MD5Sum< ::core_api::BrightPiLEDResponse>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::BrightPiLED >::value();
  }
  static const char* value(const ::core_api::BrightPiLEDResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::BrightPiLEDResponse> should match 
// service_traits::DataType< ::core_api::BrightPiLED > 
template<>
struct DataType< ::core_api::BrightPiLEDResponse>
{
  static const char* value()
  {
    return DataType< ::core_api::BrightPiLED >::value();
  }
  static const char* value(const ::core_api::BrightPiLEDResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CORE_API_MESSAGE_BRIGHTPILED_H
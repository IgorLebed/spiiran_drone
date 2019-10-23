// Generated by gencpp from file core_api/GimbalSet.msg
// DO NOT EDIT!


#ifndef CORE_API_MESSAGE_GIMBALSET_H
#define CORE_API_MESSAGE_GIMBALSET_H

#include <ros/service_traits.h>


#include <core_api/GimbalSetRequest.h>
#include <core_api/GimbalSetResponse.h>


namespace core_api
{

struct GimbalSet
{

typedef GimbalSetRequest Request;
typedef GimbalSetResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GimbalSet
} // namespace core_api


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::core_api::GimbalSet > {
  static const char* value()
  {
    return "3f3faf5b1a96812718aae31048033855";
  }

  static const char* value(const ::core_api::GimbalSet&) { return value(); }
};

template<>
struct DataType< ::core_api::GimbalSet > {
  static const char* value()
  {
    return "core_api/GimbalSet";
  }

  static const char* value(const ::core_api::GimbalSet&) { return value(); }
};


// service_traits::MD5Sum< ::core_api::GimbalSetRequest> should match 
// service_traits::MD5Sum< ::core_api::GimbalSet > 
template<>
struct MD5Sum< ::core_api::GimbalSetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::GimbalSet >::value();
  }
  static const char* value(const ::core_api::GimbalSetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::GimbalSetRequest> should match 
// service_traits::DataType< ::core_api::GimbalSet > 
template<>
struct DataType< ::core_api::GimbalSetRequest>
{
  static const char* value()
  {
    return DataType< ::core_api::GimbalSet >::value();
  }
  static const char* value(const ::core_api::GimbalSetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::core_api::GimbalSetResponse> should match 
// service_traits::MD5Sum< ::core_api::GimbalSet > 
template<>
struct MD5Sum< ::core_api::GimbalSetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::GimbalSet >::value();
  }
  static const char* value(const ::core_api::GimbalSetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::GimbalSetResponse> should match 
// service_traits::DataType< ::core_api::GimbalSet > 
template<>
struct DataType< ::core_api::GimbalSetResponse>
{
  static const char* value()
  {
    return DataType< ::core_api::GimbalSet >::value();
  }
  static const char* value(const ::core_api::GimbalSetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CORE_API_MESSAGE_GIMBALSET_H
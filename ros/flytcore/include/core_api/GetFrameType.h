// Generated by gencpp from file core_api/GetFrameType.msg
// DO NOT EDIT!


#ifndef CORE_API_MESSAGE_GETFRAMETYPE_H
#define CORE_API_MESSAGE_GETFRAMETYPE_H

#include <ros/service_traits.h>


#include <core_api/GetFrameTypeRequest.h>
#include <core_api/GetFrameTypeResponse.h>


namespace core_api
{

struct GetFrameType
{

typedef GetFrameTypeRequest Request;
typedef GetFrameTypeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetFrameType
} // namespace core_api


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::core_api::GetFrameType > {
  static const char* value()
  {
    return "2ec2f59783788c725a2606f728cb44da";
  }

  static const char* value(const ::core_api::GetFrameType&) { return value(); }
};

template<>
struct DataType< ::core_api::GetFrameType > {
  static const char* value()
  {
    return "core_api/GetFrameType";
  }

  static const char* value(const ::core_api::GetFrameType&) { return value(); }
};


// service_traits::MD5Sum< ::core_api::GetFrameTypeRequest> should match 
// service_traits::MD5Sum< ::core_api::GetFrameType > 
template<>
struct MD5Sum< ::core_api::GetFrameTypeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::GetFrameType >::value();
  }
  static const char* value(const ::core_api::GetFrameTypeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::GetFrameTypeRequest> should match 
// service_traits::DataType< ::core_api::GetFrameType > 
template<>
struct DataType< ::core_api::GetFrameTypeRequest>
{
  static const char* value()
  {
    return DataType< ::core_api::GetFrameType >::value();
  }
  static const char* value(const ::core_api::GetFrameTypeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::core_api::GetFrameTypeResponse> should match 
// service_traits::MD5Sum< ::core_api::GetFrameType > 
template<>
struct MD5Sum< ::core_api::GetFrameTypeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::GetFrameType >::value();
  }
  static const char* value(const ::core_api::GetFrameTypeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::GetFrameTypeResponse> should match 
// service_traits::DataType< ::core_api::GetFrameType > 
template<>
struct DataType< ::core_api::GetFrameTypeResponse>
{
  static const char* value()
  {
    return DataType< ::core_api::GetFrameType >::value();
  }
  static const char* value(const ::core_api::GetFrameTypeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CORE_API_MESSAGE_GETFRAMETYPE_H
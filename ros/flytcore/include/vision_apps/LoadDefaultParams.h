// Generated by gencpp from file vision_apps/LoadDefaultParams.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_LOADDEFAULTPARAMS_H
#define VISION_APPS_MESSAGE_LOADDEFAULTPARAMS_H

#include <ros/service_traits.h>


#include <vision_apps/LoadDefaultParamsRequest.h>
#include <vision_apps/LoadDefaultParamsResponse.h>


namespace vision_apps
{

struct LoadDefaultParams
{

typedef LoadDefaultParamsRequest Request;
typedef LoadDefaultParamsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LoadDefaultParams
} // namespace vision_apps


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vision_apps::LoadDefaultParams > {
  static const char* value()
  {
    return "4ad76664b0717ddbf6142456d7398288";
  }

  static const char* value(const ::vision_apps::LoadDefaultParams&) { return value(); }
};

template<>
struct DataType< ::vision_apps::LoadDefaultParams > {
  static const char* value()
  {
    return "vision_apps/LoadDefaultParams";
  }

  static const char* value(const ::vision_apps::LoadDefaultParams&) { return value(); }
};


// service_traits::MD5Sum< ::vision_apps::LoadDefaultParamsRequest> should match 
// service_traits::MD5Sum< ::vision_apps::LoadDefaultParams > 
template<>
struct MD5Sum< ::vision_apps::LoadDefaultParamsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::LoadDefaultParams >::value();
  }
  static const char* value(const ::vision_apps::LoadDefaultParamsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::LoadDefaultParamsRequest> should match 
// service_traits::DataType< ::vision_apps::LoadDefaultParams > 
template<>
struct DataType< ::vision_apps::LoadDefaultParamsRequest>
{
  static const char* value()
  {
    return DataType< ::vision_apps::LoadDefaultParams >::value();
  }
  static const char* value(const ::vision_apps::LoadDefaultParamsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vision_apps::LoadDefaultParamsResponse> should match 
// service_traits::MD5Sum< ::vision_apps::LoadDefaultParams > 
template<>
struct MD5Sum< ::vision_apps::LoadDefaultParamsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::LoadDefaultParams >::value();
  }
  static const char* value(const ::vision_apps::LoadDefaultParamsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::LoadDefaultParamsResponse> should match 
// service_traits::DataType< ::vision_apps::LoadDefaultParams > 
template<>
struct DataType< ::vision_apps::LoadDefaultParamsResponse>
{
  static const char* value()
  {
    return DataType< ::vision_apps::LoadDefaultParams >::value();
  }
  static const char* value(const ::vision_apps::LoadDefaultParamsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VISION_APPS_MESSAGE_LOADDEFAULTPARAMS_H
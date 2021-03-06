// Generated by gencpp from file vision_apps/UpdateAlias.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_UPDATEALIAS_H
#define VISION_APPS_MESSAGE_UPDATEALIAS_H

#include <ros/service_traits.h>


#include <vision_apps/UpdateAliasRequest.h>
#include <vision_apps/UpdateAliasResponse.h>


namespace vision_apps
{

struct UpdateAlias
{

typedef UpdateAliasRequest Request;
typedef UpdateAliasResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct UpdateAlias
} // namespace vision_apps


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vision_apps::UpdateAlias > {
  static const char* value()
  {
    return "0a1770d68691fd4da5d99ac89cb0df8b";
  }

  static const char* value(const ::vision_apps::UpdateAlias&) { return value(); }
};

template<>
struct DataType< ::vision_apps::UpdateAlias > {
  static const char* value()
  {
    return "vision_apps/UpdateAlias";
  }

  static const char* value(const ::vision_apps::UpdateAlias&) { return value(); }
};


// service_traits::MD5Sum< ::vision_apps::UpdateAliasRequest> should match 
// service_traits::MD5Sum< ::vision_apps::UpdateAlias > 
template<>
struct MD5Sum< ::vision_apps::UpdateAliasRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::UpdateAlias >::value();
  }
  static const char* value(const ::vision_apps::UpdateAliasRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::UpdateAliasRequest> should match 
// service_traits::DataType< ::vision_apps::UpdateAlias > 
template<>
struct DataType< ::vision_apps::UpdateAliasRequest>
{
  static const char* value()
  {
    return DataType< ::vision_apps::UpdateAlias >::value();
  }
  static const char* value(const ::vision_apps::UpdateAliasRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vision_apps::UpdateAliasResponse> should match 
// service_traits::MD5Sum< ::vision_apps::UpdateAlias > 
template<>
struct MD5Sum< ::vision_apps::UpdateAliasResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::UpdateAlias >::value();
  }
  static const char* value(const ::vision_apps::UpdateAliasResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::UpdateAliasResponse> should match 
// service_traits::DataType< ::vision_apps::UpdateAlias > 
template<>
struct DataType< ::vision_apps::UpdateAliasResponse>
{
  static const char* value()
  {
    return DataType< ::vision_apps::UpdateAlias >::value();
  }
  static const char* value(const ::vision_apps::UpdateAliasResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VISION_APPS_MESSAGE_UPDATEALIAS_H

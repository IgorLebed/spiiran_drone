// Generated by gencpp from file vision_apps/SetLandingTags.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_SETLANDINGTAGS_H
#define VISION_APPS_MESSAGE_SETLANDINGTAGS_H

#include <ros/service_traits.h>


#include <vision_apps/SetLandingTagsRequest.h>
#include <vision_apps/SetLandingTagsResponse.h>


namespace vision_apps
{

struct SetLandingTags
{

typedef SetLandingTagsRequest Request;
typedef SetLandingTagsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetLandingTags
} // namespace vision_apps


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vision_apps::SetLandingTags > {
  static const char* value()
  {
    return "cd699613466cea6d48ccdaa53ecb88b7";
  }

  static const char* value(const ::vision_apps::SetLandingTags&) { return value(); }
};

template<>
struct DataType< ::vision_apps::SetLandingTags > {
  static const char* value()
  {
    return "vision_apps/SetLandingTags";
  }

  static const char* value(const ::vision_apps::SetLandingTags&) { return value(); }
};


// service_traits::MD5Sum< ::vision_apps::SetLandingTagsRequest> should match 
// service_traits::MD5Sum< ::vision_apps::SetLandingTags > 
template<>
struct MD5Sum< ::vision_apps::SetLandingTagsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::SetLandingTags >::value();
  }
  static const char* value(const ::vision_apps::SetLandingTagsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::SetLandingTagsRequest> should match 
// service_traits::DataType< ::vision_apps::SetLandingTags > 
template<>
struct DataType< ::vision_apps::SetLandingTagsRequest>
{
  static const char* value()
  {
    return DataType< ::vision_apps::SetLandingTags >::value();
  }
  static const char* value(const ::vision_apps::SetLandingTagsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vision_apps::SetLandingTagsResponse> should match 
// service_traits::MD5Sum< ::vision_apps::SetLandingTags > 
template<>
struct MD5Sum< ::vision_apps::SetLandingTagsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::SetLandingTags >::value();
  }
  static const char* value(const ::vision_apps::SetLandingTagsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::SetLandingTagsResponse> should match 
// service_traits::DataType< ::vision_apps::SetLandingTags > 
template<>
struct DataType< ::vision_apps::SetLandingTagsResponse>
{
  static const char* value()
  {
    return DataType< ::vision_apps::SetLandingTags >::value();
  }
  static const char* value(const ::vision_apps::SetLandingTagsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VISION_APPS_MESSAGE_SETLANDINGTAGS_H

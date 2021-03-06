// Generated by gencpp from file vision_apps/UploadRaspiVideos.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_UPLOADRASPIVIDEOS_H
#define VISION_APPS_MESSAGE_UPLOADRASPIVIDEOS_H

#include <ros/service_traits.h>


#include <vision_apps/UploadRaspiVideosRequest.h>
#include <vision_apps/UploadRaspiVideosResponse.h>


namespace vision_apps
{

struct UploadRaspiVideos
{

typedef UploadRaspiVideosRequest Request;
typedef UploadRaspiVideosResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct UploadRaspiVideos
} // namespace vision_apps


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vision_apps::UploadRaspiVideos > {
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::vision_apps::UploadRaspiVideos&) { return value(); }
};

template<>
struct DataType< ::vision_apps::UploadRaspiVideos > {
  static const char* value()
  {
    return "vision_apps/UploadRaspiVideos";
  }

  static const char* value(const ::vision_apps::UploadRaspiVideos&) { return value(); }
};


// service_traits::MD5Sum< ::vision_apps::UploadRaspiVideosRequest> should match 
// service_traits::MD5Sum< ::vision_apps::UploadRaspiVideos > 
template<>
struct MD5Sum< ::vision_apps::UploadRaspiVideosRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::UploadRaspiVideos >::value();
  }
  static const char* value(const ::vision_apps::UploadRaspiVideosRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::UploadRaspiVideosRequest> should match 
// service_traits::DataType< ::vision_apps::UploadRaspiVideos > 
template<>
struct DataType< ::vision_apps::UploadRaspiVideosRequest>
{
  static const char* value()
  {
    return DataType< ::vision_apps::UploadRaspiVideos >::value();
  }
  static const char* value(const ::vision_apps::UploadRaspiVideosRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vision_apps::UploadRaspiVideosResponse> should match 
// service_traits::MD5Sum< ::vision_apps::UploadRaspiVideos > 
template<>
struct MD5Sum< ::vision_apps::UploadRaspiVideosResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::UploadRaspiVideos >::value();
  }
  static const char* value(const ::vision_apps::UploadRaspiVideosResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::UploadRaspiVideosResponse> should match 
// service_traits::DataType< ::vision_apps::UploadRaspiVideos > 
template<>
struct DataType< ::vision_apps::UploadRaspiVideosResponse>
{
  static const char* value()
  {
    return DataType< ::vision_apps::UploadRaspiVideos >::value();
  }
  static const char* value(const ::vision_apps::UploadRaspiVideosResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VISION_APPS_MESSAGE_UPLOADRASPIVIDEOS_H

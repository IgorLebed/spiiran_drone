// Generated by gencpp from file vision_apps/StartCameraCapture.msg
// DO NOT EDIT!


#ifndef VISION_APPS_MESSAGE_STARTCAMERACAPTURE_H
#define VISION_APPS_MESSAGE_STARTCAMERACAPTURE_H

#include <ros/service_traits.h>


#include <vision_apps/StartCameraCaptureRequest.h>
#include <vision_apps/StartCameraCaptureResponse.h>


namespace vision_apps
{

struct StartCameraCapture
{

typedef StartCameraCaptureRequest Request;
typedef StartCameraCaptureResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct StartCameraCapture
} // namespace vision_apps


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vision_apps::StartCameraCapture > {
  static const char* value()
  {
    return "5501cdfd5da9afae41c8afd579b3c676";
  }

  static const char* value(const ::vision_apps::StartCameraCapture&) { return value(); }
};

template<>
struct DataType< ::vision_apps::StartCameraCapture > {
  static const char* value()
  {
    return "vision_apps/StartCameraCapture";
  }

  static const char* value(const ::vision_apps::StartCameraCapture&) { return value(); }
};


// service_traits::MD5Sum< ::vision_apps::StartCameraCaptureRequest> should match 
// service_traits::MD5Sum< ::vision_apps::StartCameraCapture > 
template<>
struct MD5Sum< ::vision_apps::StartCameraCaptureRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::StartCameraCapture >::value();
  }
  static const char* value(const ::vision_apps::StartCameraCaptureRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::StartCameraCaptureRequest> should match 
// service_traits::DataType< ::vision_apps::StartCameraCapture > 
template<>
struct DataType< ::vision_apps::StartCameraCaptureRequest>
{
  static const char* value()
  {
    return DataType< ::vision_apps::StartCameraCapture >::value();
  }
  static const char* value(const ::vision_apps::StartCameraCaptureRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vision_apps::StartCameraCaptureResponse> should match 
// service_traits::MD5Sum< ::vision_apps::StartCameraCapture > 
template<>
struct MD5Sum< ::vision_apps::StartCameraCaptureResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vision_apps::StartCameraCapture >::value();
  }
  static const char* value(const ::vision_apps::StartCameraCaptureResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vision_apps::StartCameraCaptureResponse> should match 
// service_traits::DataType< ::vision_apps::StartCameraCapture > 
template<>
struct DataType< ::vision_apps::StartCameraCaptureResponse>
{
  static const char* value()
  {
    return DataType< ::vision_apps::StartCameraCapture >::value();
  }
  static const char* value(const ::vision_apps::StartCameraCaptureResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VISION_APPS_MESSAGE_STARTCAMERACAPTURE_H
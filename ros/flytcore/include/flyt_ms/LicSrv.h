// Generated by gencpp from file flyt_ms/LicSrv.msg
// DO NOT EDIT!


#ifndef FLYT_MS_MESSAGE_LICSRV_H
#define FLYT_MS_MESSAGE_LICSRV_H

#include <ros/service_traits.h>


#include <flyt_ms/LicSrvRequest.h>
#include <flyt_ms/LicSrvResponse.h>


namespace flyt_ms
{

struct LicSrv
{

typedef LicSrvRequest Request;
typedef LicSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LicSrv
} // namespace flyt_ms


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::flyt_ms::LicSrv > {
  static const char* value()
  {
    return "78ae2287421c41faed757606acee0dc8";
  }

  static const char* value(const ::flyt_ms::LicSrv&) { return value(); }
};

template<>
struct DataType< ::flyt_ms::LicSrv > {
  static const char* value()
  {
    return "flyt_ms/LicSrv";
  }

  static const char* value(const ::flyt_ms::LicSrv&) { return value(); }
};


// service_traits::MD5Sum< ::flyt_ms::LicSrvRequest> should match 
// service_traits::MD5Sum< ::flyt_ms::LicSrv > 
template<>
struct MD5Sum< ::flyt_ms::LicSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::flyt_ms::LicSrv >::value();
  }
  static const char* value(const ::flyt_ms::LicSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::flyt_ms::LicSrvRequest> should match 
// service_traits::DataType< ::flyt_ms::LicSrv > 
template<>
struct DataType< ::flyt_ms::LicSrvRequest>
{
  static const char* value()
  {
    return DataType< ::flyt_ms::LicSrv >::value();
  }
  static const char* value(const ::flyt_ms::LicSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::flyt_ms::LicSrvResponse> should match 
// service_traits::MD5Sum< ::flyt_ms::LicSrv > 
template<>
struct MD5Sum< ::flyt_ms::LicSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::flyt_ms::LicSrv >::value();
  }
  static const char* value(const ::flyt_ms::LicSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::flyt_ms::LicSrvResponse> should match 
// service_traits::DataType< ::flyt_ms::LicSrv > 
template<>
struct DataType< ::flyt_ms::LicSrvResponse>
{
  static const char* value()
  {
    return DataType< ::flyt_ms::LicSrv >::value();
  }
  static const char* value(const ::flyt_ms::LicSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FLYT_MS_MESSAGE_LICSRV_H

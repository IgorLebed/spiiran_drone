// Generated by gencpp from file flyt_ms/LicChkSrv.msg
// DO NOT EDIT!


#ifndef FLYT_MS_MESSAGE_LICCHKSRV_H
#define FLYT_MS_MESSAGE_LICCHKSRV_H

#include <ros/service_traits.h>


#include <flyt_ms/LicChkSrvRequest.h>
#include <flyt_ms/LicChkSrvResponse.h>


namespace flyt_ms
{

struct LicChkSrv
{

typedef LicChkSrvRequest Request;
typedef LicChkSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LicChkSrv
} // namespace flyt_ms


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::flyt_ms::LicChkSrv > {
  static const char* value()
  {
    return "654af7e147b2d29af49c77584bd33b70";
  }

  static const char* value(const ::flyt_ms::LicChkSrv&) { return value(); }
};

template<>
struct DataType< ::flyt_ms::LicChkSrv > {
  static const char* value()
  {
    return "flyt_ms/LicChkSrv";
  }

  static const char* value(const ::flyt_ms::LicChkSrv&) { return value(); }
};


// service_traits::MD5Sum< ::flyt_ms::LicChkSrvRequest> should match 
// service_traits::MD5Sum< ::flyt_ms::LicChkSrv > 
template<>
struct MD5Sum< ::flyt_ms::LicChkSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::flyt_ms::LicChkSrv >::value();
  }
  static const char* value(const ::flyt_ms::LicChkSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::flyt_ms::LicChkSrvRequest> should match 
// service_traits::DataType< ::flyt_ms::LicChkSrv > 
template<>
struct DataType< ::flyt_ms::LicChkSrvRequest>
{
  static const char* value()
  {
    return DataType< ::flyt_ms::LicChkSrv >::value();
  }
  static const char* value(const ::flyt_ms::LicChkSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::flyt_ms::LicChkSrvResponse> should match 
// service_traits::MD5Sum< ::flyt_ms::LicChkSrv > 
template<>
struct MD5Sum< ::flyt_ms::LicChkSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::flyt_ms::LicChkSrv >::value();
  }
  static const char* value(const ::flyt_ms::LicChkSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::flyt_ms::LicChkSrvResponse> should match 
// service_traits::DataType< ::flyt_ms::LicChkSrv > 
template<>
struct DataType< ::flyt_ms::LicChkSrvResponse>
{
  static const char* value()
  {
    return DataType< ::flyt_ms::LicChkSrv >::value();
  }
  static const char* value(const ::flyt_ms::LicChkSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FLYT_MS_MESSAGE_LICCHKSRV_H

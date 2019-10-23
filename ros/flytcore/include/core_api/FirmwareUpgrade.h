// Generated by gencpp from file core_api/FirmwareUpgrade.msg
// DO NOT EDIT!


#ifndef CORE_API_MESSAGE_FIRMWAREUPGRADE_H
#define CORE_API_MESSAGE_FIRMWAREUPGRADE_H

#include <ros/service_traits.h>


#include <core_api/FirmwareUpgradeRequest.h>
#include <core_api/FirmwareUpgradeResponse.h>


namespace core_api
{

struct FirmwareUpgrade
{

typedef FirmwareUpgradeRequest Request;
typedef FirmwareUpgradeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct FirmwareUpgrade
} // namespace core_api


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::core_api::FirmwareUpgrade > {
  static const char* value()
  {
    return "bde267f7dad1da13b302d98acf957681";
  }

  static const char* value(const ::core_api::FirmwareUpgrade&) { return value(); }
};

template<>
struct DataType< ::core_api::FirmwareUpgrade > {
  static const char* value()
  {
    return "core_api/FirmwareUpgrade";
  }

  static const char* value(const ::core_api::FirmwareUpgrade&) { return value(); }
};


// service_traits::MD5Sum< ::core_api::FirmwareUpgradeRequest> should match 
// service_traits::MD5Sum< ::core_api::FirmwareUpgrade > 
template<>
struct MD5Sum< ::core_api::FirmwareUpgradeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::FirmwareUpgrade >::value();
  }
  static const char* value(const ::core_api::FirmwareUpgradeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::FirmwareUpgradeRequest> should match 
// service_traits::DataType< ::core_api::FirmwareUpgrade > 
template<>
struct DataType< ::core_api::FirmwareUpgradeRequest>
{
  static const char* value()
  {
    return DataType< ::core_api::FirmwareUpgrade >::value();
  }
  static const char* value(const ::core_api::FirmwareUpgradeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::core_api::FirmwareUpgradeResponse> should match 
// service_traits::MD5Sum< ::core_api::FirmwareUpgrade > 
template<>
struct MD5Sum< ::core_api::FirmwareUpgradeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::core_api::FirmwareUpgrade >::value();
  }
  static const char* value(const ::core_api::FirmwareUpgradeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::core_api::FirmwareUpgradeResponse> should match 
// service_traits::DataType< ::core_api::FirmwareUpgrade > 
template<>
struct DataType< ::core_api::FirmwareUpgradeResponse>
{
  static const char* value()
  {
    return DataType< ::core_api::FirmwareUpgrade >::value();
  }
  static const char* value(const ::core_api::FirmwareUpgradeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CORE_API_MESSAGE_FIRMWAREUPGRADE_H
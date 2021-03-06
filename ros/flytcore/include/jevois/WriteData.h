// Generated by gencpp from file jevois/WriteData.msg
// DO NOT EDIT!


#ifndef JEVOIS_MESSAGE_WRITEDATA_H
#define JEVOIS_MESSAGE_WRITEDATA_H

#include <ros/service_traits.h>


#include <jevois/WriteDataRequest.h>
#include <jevois/WriteDataResponse.h>


namespace jevois
{

struct WriteData
{

typedef WriteDataRequest Request;
typedef WriteDataResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct WriteData
} // namespace jevois


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::jevois::WriteData > {
  static const char* value()
  {
    return "322ec58d02fbdfdfc173f287780bbeea";
  }

  static const char* value(const ::jevois::WriteData&) { return value(); }
};

template<>
struct DataType< ::jevois::WriteData > {
  static const char* value()
  {
    return "jevois/WriteData";
  }

  static const char* value(const ::jevois::WriteData&) { return value(); }
};


// service_traits::MD5Sum< ::jevois::WriteDataRequest> should match 
// service_traits::MD5Sum< ::jevois::WriteData > 
template<>
struct MD5Sum< ::jevois::WriteDataRequest>
{
  static const char* value()
  {
    return MD5Sum< ::jevois::WriteData >::value();
  }
  static const char* value(const ::jevois::WriteDataRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::jevois::WriteDataRequest> should match 
// service_traits::DataType< ::jevois::WriteData > 
template<>
struct DataType< ::jevois::WriteDataRequest>
{
  static const char* value()
  {
    return DataType< ::jevois::WriteData >::value();
  }
  static const char* value(const ::jevois::WriteDataRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::jevois::WriteDataResponse> should match 
// service_traits::MD5Sum< ::jevois::WriteData > 
template<>
struct MD5Sum< ::jevois::WriteDataResponse>
{
  static const char* value()
  {
    return MD5Sum< ::jevois::WriteData >::value();
  }
  static const char* value(const ::jevois::WriteDataResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::jevois::WriteDataResponse> should match 
// service_traits::DataType< ::jevois::WriteData > 
template<>
struct DataType< ::jevois::WriteDataResponse>
{
  static const char* value()
  {
    return DataType< ::jevois::WriteData >::value();
  }
  static const char* value(const ::jevois::WriteDataResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // JEVOIS_MESSAGE_WRITEDATA_H

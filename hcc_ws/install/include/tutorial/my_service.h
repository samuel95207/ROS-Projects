// Generated by gencpp from file tutorial/my_service.msg
// DO NOT EDIT!


#ifndef TUTORIAL_MESSAGE_MY_SERVICE_H
#define TUTORIAL_MESSAGE_MY_SERVICE_H

#include <ros/service_traits.h>


#include <tutorial/my_serviceRequest.h>
#include <tutorial/my_serviceResponse.h>


namespace tutorial
{

struct my_service
{

typedef my_serviceRequest Request;
typedef my_serviceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct my_service
} // namespace tutorial


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tutorial::my_service > {
  static const char* value()
  {
    return "6961c189baed6807930789f82dc9e445";
  }

  static const char* value(const ::tutorial::my_service&) { return value(); }
};

template<>
struct DataType< ::tutorial::my_service > {
  static const char* value()
  {
    return "tutorial/my_service";
  }

  static const char* value(const ::tutorial::my_service&) { return value(); }
};


// service_traits::MD5Sum< ::tutorial::my_serviceRequest> should match 
// service_traits::MD5Sum< ::tutorial::my_service > 
template<>
struct MD5Sum< ::tutorial::my_serviceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tutorial::my_service >::value();
  }
  static const char* value(const ::tutorial::my_serviceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tutorial::my_serviceRequest> should match 
// service_traits::DataType< ::tutorial::my_service > 
template<>
struct DataType< ::tutorial::my_serviceRequest>
{
  static const char* value()
  {
    return DataType< ::tutorial::my_service >::value();
  }
  static const char* value(const ::tutorial::my_serviceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tutorial::my_serviceResponse> should match 
// service_traits::MD5Sum< ::tutorial::my_service > 
template<>
struct MD5Sum< ::tutorial::my_serviceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tutorial::my_service >::value();
  }
  static const char* value(const ::tutorial::my_serviceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tutorial::my_serviceResponse> should match 
// service_traits::DataType< ::tutorial::my_service > 
template<>
struct DataType< ::tutorial::my_serviceResponse>
{
  static const char* value()
  {
    return DataType< ::tutorial::my_service >::value();
  }
  static const char* value(const ::tutorial::my_serviceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TUTORIAL_MESSAGE_MY_SERVICE_H

// Generated by gencpp from file tutorial/my_serviceRequest.msg
// DO NOT EDIT!


#ifndef TUTORIAL_MESSAGE_MY_SERVICEREQUEST_H
#define TUTORIAL_MESSAGE_MY_SERVICEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tutorial
{
template <class ContainerAllocator>
struct my_serviceRequest_
{
  typedef my_serviceRequest_<ContainerAllocator> Type;

  my_serviceRequest_()
    : filename()  {
    }
  my_serviceRequest_(const ContainerAllocator& _alloc)
    : filename(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _filename_type;
  _filename_type filename;





  typedef boost::shared_ptr< ::tutorial::my_serviceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tutorial::my_serviceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct my_serviceRequest_

typedef ::tutorial::my_serviceRequest_<std::allocator<void> > my_serviceRequest;

typedef boost::shared_ptr< ::tutorial::my_serviceRequest > my_serviceRequestPtr;
typedef boost::shared_ptr< ::tutorial::my_serviceRequest const> my_serviceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tutorial::my_serviceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tutorial::my_serviceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tutorial

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tutorial::my_serviceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tutorial::my_serviceRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tutorial::my_serviceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tutorial::my_serviceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tutorial::my_serviceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tutorial::my_serviceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tutorial::my_serviceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "030824f52a0628ead956fb9d67e66ae9";
  }

  static const char* value(const ::tutorial::my_serviceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x030824f52a0628eaULL;
  static const uint64_t static_value2 = 0xd956fb9d67e66ae9ULL;
};

template<class ContainerAllocator>
struct DataType< ::tutorial::my_serviceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tutorial/my_serviceRequest";
  }

  static const char* value(const ::tutorial::my_serviceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tutorial::my_serviceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string filename\n\
";
  }

  static const char* value(const ::tutorial::my_serviceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tutorial::my_serviceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.filename);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct my_serviceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tutorial::my_serviceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tutorial::my_serviceRequest_<ContainerAllocator>& v)
  {
    s << indent << "filename: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.filename);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUTORIAL_MESSAGE_MY_SERVICEREQUEST_H

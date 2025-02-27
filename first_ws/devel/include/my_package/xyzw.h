// Generated by gencpp from file my_package/xyzw.msg
// DO NOT EDIT!


#ifndef MY_PACKAGE_MESSAGE_XYZW_H
#define MY_PACKAGE_MESSAGE_XYZW_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_package
{
template <class ContainerAllocator>
struct xyzw_
{
  typedef xyzw_<ContainerAllocator> Type;

  xyzw_()
    : x(0)
    , y(0)
    , z(0)
    , w(0)  {
    }
  xyzw_(const ContainerAllocator& _alloc)
    : x(0)
    , y(0)
    , z(0)
    , w(0)  {
  (void)_alloc;
    }



   typedef int16_t _x_type;
  _x_type x;

   typedef int16_t _y_type;
  _y_type y;

   typedef int16_t _z_type;
  _z_type z;

   typedef int16_t _w_type;
  _w_type w;





  typedef boost::shared_ptr< ::my_package::xyzw_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_package::xyzw_<ContainerAllocator> const> ConstPtr;

}; // struct xyzw_

typedef ::my_package::xyzw_<std::allocator<void> > xyzw;

typedef boost::shared_ptr< ::my_package::xyzw > xyzwPtr;
typedef boost::shared_ptr< ::my_package::xyzw const> xyzwConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_package::xyzw_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_package::xyzw_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_package::xyzw_<ContainerAllocator1> & lhs, const ::my_package::xyzw_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.w == rhs.w;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_package::xyzw_<ContainerAllocator1> & lhs, const ::my_package::xyzw_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_package

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_package::xyzw_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_package::xyzw_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_package::xyzw_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_package::xyzw_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_package::xyzw_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_package::xyzw_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_package::xyzw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5956c726008213976745e51253798e9f";
  }

  static const char* value(const ::my_package::xyzw_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5956c72600821397ULL;
  static const uint64_t static_value2 = 0x6745e51253798e9fULL;
};

template<class ContainerAllocator>
struct DataType< ::my_package::xyzw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_package/xyzw";
  }

  static const char* value(const ::my_package::xyzw_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_package::xyzw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 x\n"
"int16 y\n"
"int16 z\n"
"int16 w\n"
;
  }

  static const char* value(const ::my_package::xyzw_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_package::xyzw_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.w);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct xyzw_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_package::xyzw_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_package::xyzw_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<int16_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int16_t>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<int16_t>::stream(s, indent + "  ", v.z);
    s << indent << "w: ";
    Printer<int16_t>::stream(s, indent + "  ", v.w);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_PACKAGE_MESSAGE_XYZW_H

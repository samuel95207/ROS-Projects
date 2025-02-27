// Generated by gencpp from file realsense2_camera/IMUInfo.msg
// DO NOT EDIT!


#ifndef REALSENSE2_CAMERA_MESSAGE_IMUINFO_H
#define REALSENSE2_CAMERA_MESSAGE_IMUINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace realsense2_camera
{
template <class ContainerAllocator>
struct IMUInfo_
{
  typedef IMUInfo_<ContainerAllocator> Type;

  IMUInfo_()
    : frame_id()
    , data()
    , noise_variances()
    , bias_variances()  {
      data.assign(0.0);

      noise_variances.assign(0.0);

      bias_variances.assign(0.0);
  }
  IMUInfo_(const ContainerAllocator& _alloc)
    : frame_id(_alloc)
    , data()
    , noise_variances()
    , bias_variances()  {
  (void)_alloc;
      data.assign(0.0);

      noise_variances.assign(0.0);

      bias_variances.assign(0.0);
  }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _frame_id_type;
  _frame_id_type frame_id;

   typedef boost::array<double, 12>  _data_type;
  _data_type data;

   typedef boost::array<double, 3>  _noise_variances_type;
  _noise_variances_type noise_variances;

   typedef boost::array<double, 3>  _bias_variances_type;
  _bias_variances_type bias_variances;





  typedef boost::shared_ptr< ::realsense2_camera::IMUInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::realsense2_camera::IMUInfo_<ContainerAllocator> const> ConstPtr;

}; // struct IMUInfo_

typedef ::realsense2_camera::IMUInfo_<std::allocator<void> > IMUInfo;

typedef boost::shared_ptr< ::realsense2_camera::IMUInfo > IMUInfoPtr;
typedef boost::shared_ptr< ::realsense2_camera::IMUInfo const> IMUInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::realsense2_camera::IMUInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::realsense2_camera::IMUInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace realsense2_camera

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'realsense2_camera': ['/home/locobot/ROS-Projects/hcc_ws/src/realsense-ros/realsense2_camera/msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::realsense2_camera::IMUInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realsense2_camera::IMUInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::realsense2_camera::IMUInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::realsense2_camera::IMUInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense2_camera::IMUInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense2_camera::IMUInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::realsense2_camera::IMUInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a02adb3a99530b11ba18a16f40f9512a";
  }

  static const char* value(const ::realsense2_camera::IMUInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa02adb3a99530b11ULL;
  static const uint64_t static_value2 = 0xba18a16f40f9512aULL;
};

template<class ContainerAllocator>
struct DataType< ::realsense2_camera::IMUInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "realsense2_camera/IMUInfo";
  }

  static const char* value(const ::realsense2_camera::IMUInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::realsense2_camera::IMUInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string frame_id\n\
float64[12] data\n\
float64[3] noise_variances\n\
float64[3] bias_variances\n\
";
  }

  static const char* value(const ::realsense2_camera::IMUInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::realsense2_camera::IMUInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.frame_id);
      stream.next(m.data);
      stream.next(m.noise_variances);
      stream.next(m.bias_variances);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IMUInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::realsense2_camera::IMUInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::realsense2_camera::IMUInfo_<ContainerAllocator>& v)
  {
    s << indent << "frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.frame_id);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.data[i]);
    }
    s << indent << "noise_variances[]" << std::endl;
    for (size_t i = 0; i < v.noise_variances.size(); ++i)
    {
      s << indent << "  noise_variances[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.noise_variances[i]);
    }
    s << indent << "bias_variances[]" << std::endl;
    for (size_t i = 0; i < v.bias_variances.size(); ++i)
    {
      s << indent << "  bias_variances[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.bias_variances[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // REALSENSE2_CAMERA_MESSAGE_IMUINFO_H

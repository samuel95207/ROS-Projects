// Generated by gencpp from file interbotix_sdk/JointCommands.msg
// DO NOT EDIT!


#ifndef INTERBOTIX_SDK_MESSAGE_JOINTCOMMANDS_H
#define INTERBOTIX_SDK_MESSAGE_JOINTCOMMANDS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace interbotix_sdk
{
template <class ContainerAllocator>
struct JointCommands_
{
  typedef JointCommands_<ContainerAllocator> Type;

  JointCommands_()
    : cmd()  {
    }
  JointCommands_(const ContainerAllocator& _alloc)
    : cmd(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _cmd_type;
  _cmd_type cmd;





  typedef boost::shared_ptr< ::interbotix_sdk::JointCommands_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::interbotix_sdk::JointCommands_<ContainerAllocator> const> ConstPtr;

}; // struct JointCommands_

typedef ::interbotix_sdk::JointCommands_<std::allocator<void> > JointCommands;

typedef boost::shared_ptr< ::interbotix_sdk::JointCommands > JointCommandsPtr;
typedef boost::shared_ptr< ::interbotix_sdk::JointCommands const> JointCommandsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::interbotix_sdk::JointCommands_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::interbotix_sdk::JointCommands_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace interbotix_sdk

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'interbotix_sdk': ['/home/locobot/ROS-Projects/interbotix_ws/src/interbotix_ros_arms/interbotix_sdk/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::interbotix_sdk::JointCommands_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::interbotix_sdk::JointCommands_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::interbotix_sdk::JointCommands_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::interbotix_sdk::JointCommands_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::interbotix_sdk::JointCommands_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::interbotix_sdk::JointCommands_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::interbotix_sdk::JointCommands_<ContainerAllocator> >
{
  static const char* value()
  {
    return "306931a8f4b928ea86b21d23c7e4f90e";
  }

  static const char* value(const ::interbotix_sdk::JointCommands_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x306931a8f4b928eaULL;
  static const uint64_t static_value2 = 0x86b21d23c7e4f90eULL;
};

template<class ContainerAllocator>
struct DataType< ::interbotix_sdk::JointCommands_<ContainerAllocator> >
{
  static const char* value()
  {
    return "interbotix_sdk/JointCommands";
  }

  static const char* value(const ::interbotix_sdk::JointCommands_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::interbotix_sdk::JointCommands_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Send a vector of position [rad], velocity [rad/s], current [mA], or pwm commands to a group of joints synchronously\n\
# as defined in the 'order' sequence in the motor config files (excludes the 'gripper' joint if present)\n\
#\n\
# The order of the joints is the same as the order of the joint names as published in the joint states topic\n\
\n\
float64[] cmd\n\
";
  }

  static const char* value(const ::interbotix_sdk::JointCommands_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::interbotix_sdk::JointCommands_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointCommands_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::interbotix_sdk::JointCommands_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::interbotix_sdk::JointCommands_<ContainerAllocator>& v)
  {
    s << indent << "cmd[]" << std::endl;
    for (size_t i = 0; i < v.cmd.size(); ++i)
    {
      s << indent << "  cmd[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.cmd[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // INTERBOTIX_SDK_MESSAGE_JOINTCOMMANDS_H

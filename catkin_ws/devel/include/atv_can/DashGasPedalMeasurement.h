// Generated by gencpp from file atv_can/DashGasPedalMeasurement.msg
// DO NOT EDIT!


#ifndef ATV_CAN_MESSAGE_DASHGASPEDALMEASUREMENT_H
#define ATV_CAN_MESSAGE_DASHGASPEDALMEASUREMENT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace atv_can
{
template <class ContainerAllocator>
struct DashGasPedalMeasurement_
{
  typedef DashGasPedalMeasurement_<ContainerAllocator> Type;

  DashGasPedalMeasurement_()
    : pwm_ratio1(0)
    , pwm_ratio2(0)
    , gear_ratio(0)
    , all_wheel_drive(0)
    , time_received()  {
    }
  DashGasPedalMeasurement_(const ContainerAllocator& _alloc)
    : pwm_ratio1(0)
    , pwm_ratio2(0)
    , gear_ratio(0)
    , all_wheel_drive(0)
    , time_received()  {
  (void)_alloc;
    }



   typedef uint16_t _pwm_ratio1_type;
  _pwm_ratio1_type pwm_ratio1;

   typedef uint16_t _pwm_ratio2_type;
  _pwm_ratio2_type pwm_ratio2;

   typedef uint8_t _gear_ratio_type;
  _gear_ratio_type gear_ratio;

   typedef uint8_t _all_wheel_drive_type;
  _all_wheel_drive_type all_wheel_drive;

   typedef ros::Time _time_received_type;
  _time_received_type time_received;




  typedef boost::shared_ptr< ::atv_can::DashGasPedalMeasurement_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::atv_can::DashGasPedalMeasurement_<ContainerAllocator> const> ConstPtr;

}; // struct DashGasPedalMeasurement_

typedef ::atv_can::DashGasPedalMeasurement_<std::allocator<void> > DashGasPedalMeasurement;

typedef boost::shared_ptr< ::atv_can::DashGasPedalMeasurement > DashGasPedalMeasurementPtr;
typedef boost::shared_ptr< ::atv_can::DashGasPedalMeasurement const> DashGasPedalMeasurementConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::atv_can::DashGasPedalMeasurement_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::atv_can::DashGasPedalMeasurement_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace atv_can

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/jade/share/std_msgs/cmake/../msg'], 'atv_can': ['/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::atv_can::DashGasPedalMeasurement_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::atv_can::DashGasPedalMeasurement_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::atv_can::DashGasPedalMeasurement_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::atv_can::DashGasPedalMeasurement_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::atv_can::DashGasPedalMeasurement_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::atv_can::DashGasPedalMeasurement_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::atv_can::DashGasPedalMeasurement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4521633b3b1d64a460b4dfd592c4c89e";
  }

  static const char* value(const ::atv_can::DashGasPedalMeasurement_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4521633b3b1d64a4ULL;
  static const uint64_t static_value2 = 0x60b4dfd592c4c89eULL;
};

template<class ContainerAllocator>
struct DataType< ::atv_can::DashGasPedalMeasurement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "atv_can/DashGasPedalMeasurement";
  }

  static const char* value(const ::atv_can::DashGasPedalMeasurement_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::atv_can::DashGasPedalMeasurement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 pwm_ratio1\n\
uint16 pwm_ratio2\n\
uint8  gear_ratio\n\
uint8  all_wheel_drive\n\
time   time_received\n\
";
  }

  static const char* value(const ::atv_can::DashGasPedalMeasurement_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::atv_can::DashGasPedalMeasurement_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pwm_ratio1);
      stream.next(m.pwm_ratio2);
      stream.next(m.gear_ratio);
      stream.next(m.all_wheel_drive);
      stream.next(m.time_received);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DashGasPedalMeasurement_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::atv_can::DashGasPedalMeasurement_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::atv_can::DashGasPedalMeasurement_<ContainerAllocator>& v)
  {
    s << indent << "pwm_ratio1: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.pwm_ratio1);
    s << indent << "pwm_ratio2: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.pwm_ratio2);
    s << indent << "gear_ratio: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gear_ratio);
    s << indent << "all_wheel_drive: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.all_wheel_drive);
    s << indent << "time_received: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.time_received);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ATV_CAN_MESSAGE_DASHGASPEDALMEASUREMENT_H

// Generated by gencpp from file atv_can/OdometryMeasurement.msg
// DO NOT EDIT!


#ifndef ATV_CAN_MESSAGE_ODOMETRYMEASUREMENT_H
#define ATV_CAN_MESSAGE_ODOMETRYMEASUREMENT_H


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
struct OdometryMeasurement_
{
  typedef OdometryMeasurement_<ContainerAllocator> Type;

  OdometryMeasurement_()
    : front_left(0)
    , front_right(0)
    , rear_left(0)
    , rear_right(0)
    , time_received()  {
    }
  OdometryMeasurement_(const ContainerAllocator& _alloc)
    : front_left(0)
    , front_right(0)
    , rear_left(0)
    , rear_right(0)
    , time_received()  {
  (void)_alloc;
    }



   typedef int16_t _front_left_type;
  _front_left_type front_left;

   typedef int16_t _front_right_type;
  _front_right_type front_right;

   typedef int16_t _rear_left_type;
  _rear_left_type rear_left;

   typedef int16_t _rear_right_type;
  _rear_right_type rear_right;

   typedef ros::Time _time_received_type;
  _time_received_type time_received;




  typedef boost::shared_ptr< ::atv_can::OdometryMeasurement_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::atv_can::OdometryMeasurement_<ContainerAllocator> const> ConstPtr;

}; // struct OdometryMeasurement_

typedef ::atv_can::OdometryMeasurement_<std::allocator<void> > OdometryMeasurement;

typedef boost::shared_ptr< ::atv_can::OdometryMeasurement > OdometryMeasurementPtr;
typedef boost::shared_ptr< ::atv_can::OdometryMeasurement const> OdometryMeasurementConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::atv_can::OdometryMeasurement_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::atv_can::OdometryMeasurement_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::atv_can::OdometryMeasurement_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::atv_can::OdometryMeasurement_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::atv_can::OdometryMeasurement_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::atv_can::OdometryMeasurement_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::atv_can::OdometryMeasurement_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::atv_can::OdometryMeasurement_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::atv_can::OdometryMeasurement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ee02656794889f6c998dfdb92a35704d";
  }

  static const char* value(const ::atv_can::OdometryMeasurement_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xee02656794889f6cULL;
  static const uint64_t static_value2 = 0x998dfdb92a35704dULL;
};

template<class ContainerAllocator>
struct DataType< ::atv_can::OdometryMeasurement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "atv_can/OdometryMeasurement";
  }

  static const char* value(const ::atv_can::OdometryMeasurement_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::atv_can::OdometryMeasurement_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 front_left\n\
int16 front_right\n\
int16 rear_left\n\
int16 rear_right\n\
time time_received\n\
";
  }

  static const char* value(const ::atv_can::OdometryMeasurement_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::atv_can::OdometryMeasurement_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.front_left);
      stream.next(m.front_right);
      stream.next(m.rear_left);
      stream.next(m.rear_right);
      stream.next(m.time_received);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OdometryMeasurement_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::atv_can::OdometryMeasurement_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::atv_can::OdometryMeasurement_<ContainerAllocator>& v)
  {
    s << indent << "front_left: ";
    Printer<int16_t>::stream(s, indent + "  ", v.front_left);
    s << indent << "front_right: ";
    Printer<int16_t>::stream(s, indent + "  ", v.front_right);
    s << indent << "rear_left: ";
    Printer<int16_t>::stream(s, indent + "  ", v.rear_left);
    s << indent << "rear_right: ";
    Printer<int16_t>::stream(s, indent + "  ", v.rear_right);
    s << indent << "time_received: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.time_received);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ATV_CAN_MESSAGE_ODOMETRYMEASUREMENT_H

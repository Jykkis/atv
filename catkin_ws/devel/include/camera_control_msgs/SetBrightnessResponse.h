// Generated by gencpp from file camera_control_msgs/SetBrightnessResponse.msg
// DO NOT EDIT!


#ifndef CAMERA_CONTROL_MSGS_MESSAGE_SETBRIGHTNESSRESPONSE_H
#define CAMERA_CONTROL_MSGS_MESSAGE_SETBRIGHTNESSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace camera_control_msgs
{
template <class ContainerAllocator>
struct SetBrightnessResponse_
{
  typedef SetBrightnessResponse_<ContainerAllocator> Type;

  SetBrightnessResponse_()
    : reached_brightness(0)
    , reached_exposure_time(0.0)
    , reached_gain_value(0.0)
    , success(false)  {
    }
  SetBrightnessResponse_(const ContainerAllocator& _alloc)
    : reached_brightness(0)
    , reached_exposure_time(0.0)
    , reached_gain_value(0.0)
    , success(false)  {
  (void)_alloc;
    }



   typedef int32_t _reached_brightness_type;
  _reached_brightness_type reached_brightness;

   typedef float _reached_exposure_time_type;
  _reached_exposure_time_type reached_exposure_time;

   typedef float _reached_gain_value_type;
  _reached_gain_value_type reached_gain_value;

   typedef uint8_t _success_type;
  _success_type success;




  typedef boost::shared_ptr< ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetBrightnessResponse_

typedef ::camera_control_msgs::SetBrightnessResponse_<std::allocator<void> > SetBrightnessResponse;

typedef boost::shared_ptr< ::camera_control_msgs::SetBrightnessResponse > SetBrightnessResponsePtr;
typedef boost::shared_ptr< ::camera_control_msgs::SetBrightnessResponse const> SetBrightnessResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace camera_control_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/jade/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/jade/share/actionlib_msgs/cmake/../msg'], 'camera_control_msgs': ['/home/atv/atv-project-2017/catkin_ws/devel/share/camera_control_msgs/msg'], 'sensor_msgs': ['/opt/ros/jade/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/jade/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "62110aff39d46cf6a4ab77f09896582b";
  }

  static const char* value(const ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x62110aff39d46cf6ULL;
  static const uint64_t static_value2 = 0xa4ab77f09896582bULL;
};

template<class ContainerAllocator>
struct DataType< ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "camera_control_msgs/SetBrightnessResponse";
  }

  static const char* value(const ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
int32 reached_brightness\n\
float32 reached_exposure_time\n\
float32 reached_gain_value\n\
\n\
bool success\n\
\n\
";
  }

  static const char* value(const ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.reached_brightness);
      stream.next(m.reached_exposure_time);
      stream.next(m.reached_gain_value);
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetBrightnessResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::camera_control_msgs::SetBrightnessResponse_<ContainerAllocator>& v)
  {
    s << indent << "reached_brightness: ";
    Printer<int32_t>::stream(s, indent + "  ", v.reached_brightness);
    s << indent << "reached_exposure_time: ";
    Printer<float>::stream(s, indent + "  ", v.reached_exposure_time);
    s << indent << "reached_gain_value: ";
    Printer<float>::stream(s, indent + "  ", v.reached_gain_value);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMERA_CONTROL_MSGS_MESSAGE_SETBRIGHTNESSRESPONSE_H

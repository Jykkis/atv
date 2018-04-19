// Generated by gencpp from file gps_msgs/XYZRpvData.msg
// DO NOT EDIT!


#ifndef GPS_MSGS_MESSAGE_XYZRPVDATA_H
#define GPS_MSGS_MESSAGE_XYZRPVDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gps_msgs
{
template <class ContainerAllocator>
struct XYZRpvData_
{
  typedef XYZRpvData_<ContainerAllocator> Type;

  XYZRpvData_()
    : x(0.0)
    , y(0.0)
    , z(0.0)  {
    }
  XYZRpvData_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;




  typedef boost::shared_ptr< ::gps_msgs::XYZRpvData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gps_msgs::XYZRpvData_<ContainerAllocator> const> ConstPtr;

}; // struct XYZRpvData_

typedef ::gps_msgs::XYZRpvData_<std::allocator<void> > XYZRpvData;

typedef boost::shared_ptr< ::gps_msgs::XYZRpvData > XYZRpvDataPtr;
typedef boost::shared_ptr< ::gps_msgs::XYZRpvData const> XYZRpvDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gps_msgs::XYZRpvData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gps_msgs::XYZRpvData_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gps_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/jade/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/jade/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/jade/share/sensor_msgs/cmake/../msg'], 'gps_msgs': ['/home/atv/atv-project-2017/catkin_ws/src/gps_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gps_msgs::XYZRpvData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gps_msgs::XYZRpvData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gps_msgs::XYZRpvData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gps_msgs::XYZRpvData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gps_msgs::XYZRpvData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gps_msgs::XYZRpvData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gps_msgs::XYZRpvData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4a842b65f413084dc2b10fb484ea7f17";
  }

  static const char* value(const ::gps_msgs::XYZRpvData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4a842b65f413084dULL;
  static const uint64_t static_value2 = 0xc2b10fb484ea7f17ULL;
};

template<class ContainerAllocator>
struct DataType< ::gps_msgs::XYZRpvData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gps_msgs/XYZRpvData";
  }

  static const char* value(const ::gps_msgs::XYZRpvData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gps_msgs::XYZRpvData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::gps_msgs::XYZRpvData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gps_msgs::XYZRpvData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct XYZRpvData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gps_msgs::XYZRpvData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gps_msgs::XYZRpvData_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GPS_MSGS_MESSAGE_XYZRPVDATA_H

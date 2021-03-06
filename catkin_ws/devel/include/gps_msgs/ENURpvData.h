// Generated by gencpp from file gps_msgs/ENURpvData.msg
// DO NOT EDIT!


#ifndef GPS_MSGS_MESSAGE_ENURPVDATA_H
#define GPS_MSGS_MESSAGE_ENURPVDATA_H


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
struct ENURpvData_
{
  typedef ENURpvData_<ContainerAllocator> Type;

  ENURpvData_()
    : e(0.0)
    , n(0.0)
    , u(0.0)  {
    }
  ENURpvData_(const ContainerAllocator& _alloc)
    : e(0.0)
    , n(0.0)
    , u(0.0)  {
  (void)_alloc;
    }



   typedef double _e_type;
  _e_type e;

   typedef double _n_type;
  _n_type n;

   typedef double _u_type;
  _u_type u;




  typedef boost::shared_ptr< ::gps_msgs::ENURpvData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gps_msgs::ENURpvData_<ContainerAllocator> const> ConstPtr;

}; // struct ENURpvData_

typedef ::gps_msgs::ENURpvData_<std::allocator<void> > ENURpvData;

typedef boost::shared_ptr< ::gps_msgs::ENURpvData > ENURpvDataPtr;
typedef boost::shared_ptr< ::gps_msgs::ENURpvData const> ENURpvDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gps_msgs::ENURpvData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gps_msgs::ENURpvData_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::gps_msgs::ENURpvData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gps_msgs::ENURpvData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gps_msgs::ENURpvData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gps_msgs::ENURpvData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gps_msgs::ENURpvData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gps_msgs::ENURpvData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gps_msgs::ENURpvData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ee32a4859155fe2401cc8b90c0400d00";
  }

  static const char* value(const ::gps_msgs::ENURpvData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xee32a4859155fe24ULL;
  static const uint64_t static_value2 = 0x01cc8b90c0400d00ULL;
};

template<class ContainerAllocator>
struct DataType< ::gps_msgs::ENURpvData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gps_msgs/ENURpvData";
  }

  static const char* value(const ::gps_msgs::ENURpvData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gps_msgs::ENURpvData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 e\n\
float64 n\n\
float64 u\n\
";
  }

  static const char* value(const ::gps_msgs::ENURpvData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gps_msgs::ENURpvData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.e);
      stream.next(m.n);
      stream.next(m.u);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ENURpvData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gps_msgs::ENURpvData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gps_msgs::ENURpvData_<ContainerAllocator>& v)
  {
    s << indent << "e: ";
    Printer<double>::stream(s, indent + "  ", v.e);
    s << indent << "n: ";
    Printer<double>::stream(s, indent + "  ", v.n);
    s << indent << "u: ";
    Printer<double>::stream(s, indent + "  ", v.u);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GPS_MSGS_MESSAGE_ENURPVDATA_H

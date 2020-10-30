// Generated by gencpp from file motion_model/motor.msg
// DO NOT EDIT!


#ifndef MOTION_MODEL_MESSAGE_MOTOR_H
#define MOTION_MODEL_MESSAGE_MOTOR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace motion_model
{
template <class ContainerAllocator>
struct motor_
{
  typedef motor_<ContainerAllocator> Type;

  motor_()
    : enable_a(0)
    , motor_a(0)
    , motor_b(0)  {
    }
  motor_(const ContainerAllocator& _alloc)
    : enable_a(0)
    , motor_a(0)
    , motor_b(0)  {
  (void)_alloc;
    }



   typedef int64_t _enable_a_type;
  _enable_a_type enable_a;

   typedef int64_t _motor_a_type;
  _motor_a_type motor_a;

   typedef int64_t _motor_b_type;
  _motor_b_type motor_b;





  typedef boost::shared_ptr< ::motion_model::motor_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::motion_model::motor_<ContainerAllocator> const> ConstPtr;

}; // struct motor_

typedef ::motion_model::motor_<std::allocator<void> > motor;

typedef boost::shared_ptr< ::motion_model::motor > motorPtr;
typedef boost::shared_ptr< ::motion_model::motor const> motorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::motion_model::motor_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::motion_model::motor_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::motion_model::motor_<ContainerAllocator1> & lhs, const ::motion_model::motor_<ContainerAllocator2> & rhs)
{
  return lhs.enable_a == rhs.enable_a &&
    lhs.motor_a == rhs.motor_a &&
    lhs.motor_b == rhs.motor_b;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::motion_model::motor_<ContainerAllocator1> & lhs, const ::motion_model::motor_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace motion_model

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::motion_model::motor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::motion_model::motor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motion_model::motor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motion_model::motor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motion_model::motor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motion_model::motor_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::motion_model::motor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "16a4c61e6707493fabc6919adea54f38";
  }

  static const char* value(const ::motion_model::motor_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x16a4c61e6707493fULL;
  static const uint64_t static_value2 = 0xabc6919adea54f38ULL;
};

template<class ContainerAllocator>
struct DataType< ::motion_model::motor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "motion_model/motor";
  }

  static const char* value(const ::motion_model::motor_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::motion_model::motor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#this message file contains all the variables used for the motor driver. this is for only one motor\n"
"\n"
"int64 enable_a  #enable pin for motor A\n"
"\n"
"# direction pins for motor A\n"
"\n"
"int64 motor_a\n"
"int64 motor_b\n"
"\n"
;
  }

  static const char* value(const ::motion_model::motor_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::motion_model::motor_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.enable_a);
      stream.next(m.motor_a);
      stream.next(m.motor_b);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct motor_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::motion_model::motor_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::motion_model::motor_<ContainerAllocator>& v)
  {
    s << indent << "enable_a: ";
    Printer<int64_t>::stream(s, indent + "  ", v.enable_a);
    s << indent << "motor_a: ";
    Printer<int64_t>::stream(s, indent + "  ", v.motor_a);
    s << indent << "motor_b: ";
    Printer<int64_t>::stream(s, indent + "  ", v.motor_b);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOTION_MODEL_MESSAGE_MOTOR_H
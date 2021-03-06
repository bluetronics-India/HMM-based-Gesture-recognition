/* Auto-generated by genmsg_cpp for file /home/nhanndt/mit/nhan_pkgs/g_detector/msg/Gesture.msg */
#ifndef G_DETECTOR_MESSAGE_GESTURE_H
#define G_DETECTOR_MESSAGE_GESTURE_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "g_detector/featureVector.h"

namespace g_detector
{
template <class ContainerAllocator>
struct Gesture_ {
  typedef Gesture_<ContainerAllocator> Type;

  Gesture_()
  : f_vec()
  {
  }

  Gesture_(const ContainerAllocator& _alloc)
  : f_vec(_alloc)
  {
  }

  typedef std::vector< ::g_detector::featureVector_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::g_detector::featureVector_<ContainerAllocator> >::other >  _f_vec_type;
  std::vector< ::g_detector::featureVector_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::g_detector::featureVector_<ContainerAllocator> >::other >  f_vec;


  ROS_DEPRECATED uint32_t get_f_vec_size() const { return (uint32_t)f_vec.size(); }
  ROS_DEPRECATED void set_f_vec_size(uint32_t size) { f_vec.resize((size_t)size); }
  ROS_DEPRECATED void get_f_vec_vec(std::vector< ::g_detector::featureVector_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::g_detector::featureVector_<ContainerAllocator> >::other > & vec) const { vec = this->f_vec; }
  ROS_DEPRECATED void set_f_vec_vec(const std::vector< ::g_detector::featureVector_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::g_detector::featureVector_<ContainerAllocator> >::other > & vec) { this->f_vec = vec; }
private:
  static const char* __s_getDataType_() { return "g_detector/Gesture"; }
public:
  ROS_DEPRECATED static const std::string __s_getDataType() { return __s_getDataType_(); }

  ROS_DEPRECATED const std::string __getDataType() const { return __s_getDataType_(); }

private:
  static const char* __s_getMD5Sum_() { return "bb80121350d542d4d689c261e0480250"; }
public:
  ROS_DEPRECATED static const std::string __s_getMD5Sum() { return __s_getMD5Sum_(); }

  ROS_DEPRECATED const std::string __getMD5Sum() const { return __s_getMD5Sum_(); }

private:
  static const char* __s_getMessageDefinition_() { return "featureVector[] f_vec\n\
================================================================================\n\
MSG: g_detector/featureVector\n\
float32 l_h_distance\n\
float32 l_e_distance\n\
float32 r_h_distance\n\
float32 r_e_distance\n\
float32 l_h_direction\n\
float32 l_e_direction\n\
float32 r_h_direction\n\
float32 r_e_direction\n\
"; }
public:
  ROS_DEPRECATED static const std::string __s_getMessageDefinition() { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED const std::string __getMessageDefinition() const { return __s_getMessageDefinition_(); }

  ROS_DEPRECATED virtual uint8_t *serialize(uint8_t *write_ptr, uint32_t seq) const
  {
    ros::serialization::OStream stream(write_ptr, 1000000000);
    ros::serialization::serialize(stream, f_vec);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint8_t *deserialize(uint8_t *read_ptr)
  {
    ros::serialization::IStream stream(read_ptr, 1000000000);
    ros::serialization::deserialize(stream, f_vec);
    return stream.getData();
  }

  ROS_DEPRECATED virtual uint32_t serializationLength() const
  {
    uint32_t size = 0;
    size += ros::serialization::serializationLength(f_vec);
    return size;
  }

  typedef boost::shared_ptr< ::g_detector::Gesture_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::g_detector::Gesture_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct Gesture
typedef  ::g_detector::Gesture_<std::allocator<void> > Gesture;

typedef boost::shared_ptr< ::g_detector::Gesture> GesturePtr;
typedef boost::shared_ptr< ::g_detector::Gesture const> GestureConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::g_detector::Gesture_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::g_detector::Gesture_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace g_detector

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::g_detector::Gesture_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::g_detector::Gesture_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::g_detector::Gesture_<ContainerAllocator> > {
  static const char* value() 
  {
    return "bb80121350d542d4d689c261e0480250";
  }

  static const char* value(const  ::g_detector::Gesture_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xbb80121350d542d4ULL;
  static const uint64_t static_value2 = 0xd689c261e0480250ULL;
};

template<class ContainerAllocator>
struct DataType< ::g_detector::Gesture_<ContainerAllocator> > {
  static const char* value() 
  {
    return "g_detector/Gesture";
  }

  static const char* value(const  ::g_detector::Gesture_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::g_detector::Gesture_<ContainerAllocator> > {
  static const char* value() 
  {
    return "featureVector[] f_vec\n\
================================================================================\n\
MSG: g_detector/featureVector\n\
float32 l_h_distance\n\
float32 l_e_distance\n\
float32 r_h_distance\n\
float32 r_e_distance\n\
float32 l_h_direction\n\
float32 l_e_direction\n\
float32 r_h_direction\n\
float32 r_e_direction\n\
";
  }

  static const char* value(const  ::g_detector::Gesture_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::g_detector::Gesture_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.f_vec);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct Gesture_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::g_detector::Gesture_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::g_detector::Gesture_<ContainerAllocator> & v) 
  {
    s << indent << "f_vec[]" << std::endl;
    for (size_t i = 0; i < v.f_vec.size(); ++i)
    {
      s << indent << "  f_vec[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::g_detector::featureVector_<ContainerAllocator> >::stream(s, indent + "    ", v.f_vec[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // G_DETECTOR_MESSAGE_GESTURE_H


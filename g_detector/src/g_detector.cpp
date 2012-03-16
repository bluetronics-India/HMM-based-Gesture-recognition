/**
 * @file /g_detector/src/g_detector.cpp
 *
 * @brief File comment
 *
 * File comment
 *
 * @date Mar 13, 2012
 **/

/*****************************************************************************
** Includes
*****************************************************************************/


#include <ros/ros.h>
#include <kdl/frames.hpp>
#include <math.h>
#include <stdio.h>
#include <g_detector/Gesture.h>
#include <g_detector/featureVector.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>

// Global

g_detector::featureVector g_feature(geometry_msgs::Vector3 start_point1,
                              geometry_msgs::Vector3 start_point2,
                              geometry_msgs::Vector3 start_point3,
                              geometry_msgs::Vector3 start_point4,
                              geometry_msgs::Vector3 l_hand,
                              geometry_msgs::Vector3 l_elbow,
                              geometry_msgs::Vector3 r_hand,
                              geometry_msgs::Vector3 r_elbow){
  g_detector::featureVector g_temp;
      float d1=sqrt((l_hand.x-start_point1.x)*(l_hand.x-start_point1.x)+(l_hand.y-start_point1.y)*(l_hand.y-start_point1.y)+(l_hand.z-start_point1.z)*(l_hand.z-start_point1.z));
      g_temp.l_h_distance=d1;
//
      float d2=sqrt((l_elbow.x-start_point2.x)*(l_elbow.x-start_point2.x)+(l_elbow.y-start_point2.y)*(l_elbow.y-start_point2.y)+(l_elbow.z-start_point2.z)*(l_elbow.z-start_point2.z));
      g_temp.l_e_distance=d2;
//
      float d3=sqrt((r_hand.x-start_point3.x)*(r_hand.x-start_point3.x)+(r_hand.y-start_point3.y)*(r_hand.y-start_point3.y)+(r_hand.z-start_point3.z)*(r_hand.z-start_point3.z));
      g_temp.r_h_distance=d3;
//
      float d4=sqrt((r_elbow.x-start_point4.x)*(r_elbow.x-start_point4.x)+(r_elbow.y-start_point4.y)*(r_elbow.y-start_point4.y)+(r_elbow.z-start_point4.z)*(r_elbow.z-start_point4.z));
      g_temp.r_e_distance=d4;
//   3d features
  g_temp.l_h_direction=acos((l_hand.y-start_point1.y)/d1);
  g_temp.l_e_direction=acos((l_elbow.y-start_point2.y)/d2);
  g_temp.r_h_direction=acos((r_hand.y-start_point3.y)/d3);
  g_temp.r_e_direction=acos((r_elbow.y-start_point4.y)/d4);
  return g_temp;
}

int main(int argc, char** argv){
  ros::init(argc, argv, "g_detector");
  ros::NodeHandle node;
  ros::Publisher g_publisher =  node.advertise<g_detector::Gesture>("gesture", 1);
  tf::TransformListener listener;
  ros::Rate rate(10.0);
  geometry_msgs::Vector3 l_hand,l_elbow,r_hand,r_elbow,l_hand0,l_elbow0,r_hand0,r_elbow0;
  g_detector::Gesture g_msg;
//
  l_hand.x=0;l_hand.y=0;l_hand.z=0;
  l_elbow.x=0;l_elbow.y=0;l_elbow.z=0;
  r_hand.x=0;r_hand.y=0;r_hand.z=0;
  r_elbow.x=0;r_elbow.y=0;r_elbow.z=0;
  geometry_msgs::Vector3 start_point1=l_hand;
  geometry_msgs::Vector3 start_point2=l_elbow;
  geometry_msgs::Vector3 start_point3=r_hand;
  geometry_msgs::Vector3 start_point4=r_elbow;
//
  int count=0,flag=0,g_length=0;
  int gettingGesture=0;
  float thres=5,delta1,delta2,delta3,delta4;
//
  while (node.ok()){
    tf::StampedTransform left_elbow_transform,left_hand_transform,right_elbow_transform,right_hand_transform;
    try{
      listener.waitForTransform("openni_depth_frame", "/left_elbow_1",
                                ros::Time(0), ros::Duration(1));
      listener.lookupTransform("openni_depth_frame", "/left_elbow_1",
                               ros::Time(0), left_elbow_transform);
      listener.lookupTransform("openni_depth_frame", "/left_hand_1",
                                     ros::Time(0), left_hand_transform);
      listener.lookupTransform("openni_depth_frame", "/right_elbow_1",
                                     ros::Time(0), right_elbow_transform);
      listener.lookupTransform("openni_depth_frame", "/right_hand_1",
                                     ros::Time(0), right_hand_transform);
    }
    catch (tf::TransformException ex){
      ROS_ERROR("%s",ex.what());
      ros::Duration(1.0).sleep();
    }
//4
      l_hand0=l_hand;
      l_elbow0=l_elbow;
      r_hand0=r_hand;
      r_elbow0=r_elbow;
//  Getting position
    l_hand.x=1000+1000*left_hand_transform.getOrigin().y();
    l_hand.y=1000+1000*left_hand_transform.getOrigin().z();
    l_hand.z=1000*left_hand_transform.getOrigin().x();
    l_elbow.x=1000+1000*left_elbow_transform.getOrigin().y();
    l_elbow.y=1000+1000*left_elbow_transform.getOrigin().z();
    l_elbow.z=1000*left_elbow_transform.getOrigin().x();
    r_hand.x=1000+1000*right_hand_transform.getOrigin().y();
    r_hand.y=1000+1000*right_hand_transform.getOrigin().z();
    r_hand.z=1000*right_hand_transform.getOrigin().x();
    r_elbow.x=1000+1000*right_elbow_transform.getOrigin().y();
    r_elbow.y=1000+1000*right_elbow_transform.getOrigin().z();
    r_elbow.z=1000*right_elbow_transform.getOrigin().x();
//
// Calculate the position difference
   delta1=sqrt((l_hand.x-l_hand0.x)*(l_hand.x-l_hand0.x)+(l_hand.y-l_hand0.y)*(l_hand.y-l_hand0.y)+(l_hand.z-l_hand0.z)*(l_hand.z-l_hand0.z));
   delta2=sqrt((l_elbow.x-l_elbow0.x)*(l_elbow.x-l_elbow0.x)+(l_elbow.y-l_elbow0.y)*(l_elbow.y-l_elbow0.y)+(l_elbow.z-l_elbow0.z)*(l_elbow.z-l_elbow0.z));
   delta3=sqrt((r_hand.x-r_hand0.x)*(r_hand.x-r_hand0.x)+(r_hand.y-r_hand0.y)*(r_hand.y-r_hand0.y)+(r_hand.z-r_hand0.z)*(r_hand.z-r_hand0.z));
   delta4=sqrt((r_elbow.x-r_elbow0.x)*(r_elbow.x-r_elbow0.x)+(r_elbow.y-r_elbow0.y)*(r_elbow.y-r_elbow0.y)+(r_elbow.z-r_elbow0.z)*(r_elbow.z-r_elbow0.z));
//
   if(delta1<thres && delta2<thres && delta3<thres && delta4<thres) count++;
   else count=0;
//
   if(gettingGesture==0){
     if(count==20){
       count=0;
       gettingGesture=1;
       printf("Getting data...\n");
     }
   }
   else{
     if(g_length==0){
       start_point1=l_hand;
       start_point2=l_elbow;
       start_point3=r_hand;
       start_point4=r_elbow;
     }
     g_msg.f_vec.push_back(g_feature(start_point1,start_point2,start_point3,start_point4,
               l_hand,l_elbow,r_hand,r_elbow));
     g_length++;
     printf("Got %dth observation\n",g_length);
     if(count==20){
       count=0;
       gettingGesture=0;
       printf("Stopped data!\n");
       g_publisher.publish(g_msg);
       g_msg.f_vec.clear();
       printf("Gesture has been published with %d vector of length\n",g_length);
       g_length=0;
       printf("Waiting for new gesture...\n");
     }
   }

    rate.sleep();
  }
  return 0;
}

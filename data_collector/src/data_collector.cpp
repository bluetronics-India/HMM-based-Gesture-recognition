/**
 * @file /data_collector/src/data_collector.cpp
 *
 * @brief File comment
 *
 * File comment
 *
 * @date Mar 15, 2012
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
#include <geometry_msgs/Vector3.h>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>

// Global
  geometry_msgs::Vector3 l_hand,l_elbow,r_hand,r_elbow,l_hand0,l_elbow0,r_hand0,r_elbow0;
  std::ofstream myfile;

void gestureCallback(const g_detector::GestureConstPtr& g_msg){
  g_detector::Gesture g_data;
  std::stringstream ss;
  printf("I've got a message!\n");
  myfile.open ("data.txt",std::ios::app);
//
  for(int it=1 ; it < (g_msg->f_vec.size()-20); it++ ){
    g_data.f_vec.push_back(g_msg->f_vec[it]);
    ss << g_data.f_vec[it].l_h_distance<<" "
       << g_data.f_vec[it].l_e_distance<<" "
       << g_data.f_vec[it].r_h_distance<<" "
       << g_data.f_vec[it].r_e_distance<<" "
       << g_data.f_vec[it].l_h_direction<<" "
       << g_data.f_vec[it].l_e_direction<<" "
       << g_data.f_vec[it].r_h_direction<<" "
       << g_data.f_vec[it].r_e_direction
       <<"\n";
    myfile<<ss.str();
    ss.str("");
    printf("Feature vector %dth has just been written\n",it+1);
  }
  myfile<<"\n";
  printf("A gesture has just been completely written\n");
  myfile.close();
//
}

int main(int argc, char** argv){
  ros::init(argc, argv, "data_collector");
  ros::NodeHandle node;
  ros::Subscriber sub = node.subscribe("gesture", 1, gestureCallback);

  ros::spin();
  return 0;
}

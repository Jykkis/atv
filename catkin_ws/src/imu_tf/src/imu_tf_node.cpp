#include "ros/ros.h"
#include "sensor_msgs/Imu.h"
//#include <redalert/navstik>
#include <sstream>
#include <iostream>
using namespace std;
int main(int argc, char **argv)
{
  ros::Subscriber ns = n.subscribe("gps_odom", 1, chatterCallback);
  ros::init(argc, argv, "imu");
  ros::NodeHandle n;
  ros::Publisher out_pub = n.advertise<sensor_msgs::Imu >("imu/data_raw", 1000);
  ros::Rate loop_rate(500);
  while (ros::ok())
  {
//new imu message
    sensor_msgs::Imu imu_msg = sensor_msgs::Imu();	
    imu_msg.header.stamp = ros::Time::now();
    imu_msg.header.frame_id = "imu";
    imu_msg.orientation.x = ns.pitch();
    imu_msg.orientation.y = ns.roll();
    imu_msg.orientation.z = ns.yaw();
    imu_msg.orientation.w = 0.0;
    //imu_msg.angular_velocity_covariance = {0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};
    imu_msg.angular_velocity.x = ns.omgx();
    imu_msg.angular_velocity.y = ns.omgy();
    imu_msg.angular_velocity.z = ns.omgz();
    //imu_msg.angular_velocity_covariance = {0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};
    imu_msg.linear_acceleration.x = ns.accx();
    imu_msg.linear_acceleration.y = ns.accy();
    imu_msg.linear_acceleration.z = ns.accz();
    //imu_msg.angular_velocity_covariance = {0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};	
//publish the new imu message
	out_pub.publish(imu_msg);
    ROS_INFO("%s", "send an imu message");
//done publishing
    ros::spinOnce();  
    loop_rate.sleep();
  }
  return 0;
}

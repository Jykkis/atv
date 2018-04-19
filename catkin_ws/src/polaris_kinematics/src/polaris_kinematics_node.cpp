/******************************************************************************
 * This file contains the kinematic models of the autonomous all-terrain vehicle. 
 * Method used for implementation is Kinematic dead reckoning.
 * Output is then sent to robot_localization for applying Extended Kalman Filter.  
 *****************************************************************************/

#include "polaris_kinematics_node.h"
#include <ros/ros.h>
#include <geometry_msgs/Pose.h>

#define  _USE_MATH_DEFINES
#include <iostream>
#include <cmath>
#include <nav_msgs/Odometry.h>

using namespace kinematics;

// Converting yaw angle from Quaternion to Euler format
double yaw_from_quaternion(geometry_msgs::Quaternion q) 
{
	double t3 = 2.0 * (q.w * q.z + q.x * q.y);
	double t4 = 1.0 - 2.0 * (q.y * q.y + q.z * q.z);  
	return std::atan2(t3, t4);
}

// Converting yaw angle from Euler to Quaternion format
geometry_msgs::Quaternion quaternion_from_yaw(double yaw)
{
	double t0 = std::cos(yaw * 0.5);
	double t1 = std::sin(yaw * 0.5);
	double t2 = 1;
	double t3 = 0;
	double t4 = 1;
	double t5 = 0;

	geometry_msgs::Quaternion q;

	q.w = t0 * t2 * t4 + t1 * t3 * t5;
	q.x = t0 * t3 * t4 - t1 * t2 * t5;
	q.y = t0 * t2 * t5 + t1 * t3 * t4;
	q.z = t1 * t2 * t4 - t0 * t3 * t5;
	return q;
}

/*****************************************************************************
* Kinematic Dead Reckoning
******************************************************************************
* Parameters:

* current_pose = updated pose of the car. Contains x,y,z coordinates (z=0) and orientation of the car (wheels)
* v = average velocity of the car. Calculated from velocities of each wheel.
* steer_angle = steering angle
* sample_time = sampling interval

* Returns:
* New position and orientation of the car
*******************************************************************************/
geometry_msgs::Pose dead_reckoning(geometry_msgs::Pose current_pose, double steer_angle, double v, double sample_time, double dist_axis)
{
	// Updating global state with Kinematic dead reckoning

	// filter out small velocities, which can be caused by e.g. turning wheels
	// in-place
	if(v > -0.005 && v < 0.005) return current_pose;

	double x = current_pose.position.x;
	double y = current_pose.position.y;

	double theta = yaw_from_quaternion(current_pose.orientation);

	geometry_msgs::Pose new_pose;

	new_pose.position.x = x + v * sample_time * std::cos(theta + steer_angle/2);
	new_pose.position.y = y + v * sample_time * std::sin(theta + steer_angle/2);
	double new_theta = theta + std::tan(-steer_angle) * v * (sample_time/dist_axis);


	new_pose.orientation = quaternion_from_yaw(new_theta);
	return new_pose;
}

KinematicsNode::KinematicsNode() : nh("~")
{
    nh.getParam("steering_min", this->steering_min);
    nh.getParam("steering_max", this->steering_max);
    nh.getParam("steering_centre", this->steering_centre);
    nh.getParam("distance_of_axis", this->distance_of_axis);	
}

void KinematicsNode::run()
{
    this->odometry_measurement_subscriber = nh.subscribe("atv_odometry_measurement", 1000, &KinematicsNode::odometry_measurement_callback, this);

    this->steering_measurement_subscriber = nh.subscribe("atv_steering_measurement", 1000, &KinematicsNode::steering_measurement_callback, this);

    this->dashGas_measurement_subscriber = nh.subscribe("atv_dash_gas_pedal_measurement", 1000, &KinematicsNode::dashGasPedal_measurement_callback, this);

    this->odometry_publisher = nh.advertise<nav_msgs::Odometry>("odometry", 1000);
	ros::spin();
}

// Receiving velocity data from CAN
void KinematicsNode::odometry_measurement_callback(const atv_can::OdometryMeasurement& measurement) 
{
    this->current_velocity = this->average_velocity(measurement);
    this->is_odometry_received=true;

    if (this->is_measurements_received())
    {
        this->update_state();
    }
}

// Receiving steering angle data from CAN
void KinematicsNode::steering_measurement_callback(const atv_can::SteeringMeasurement& measurement) 
{
    // Use different steering model depending on the wheel drive mode
    double steering_angle_radians = 0.0;

    // Rear, right wheel drive aka TURF mode
    if (wheel_drive_mode == 1)
    {
        if (measurement.encoder_position < (steering_centre - 30))
        {
            // Steering left
            steering_angle_radians = measurement.encoder_position * 0.00006635 - 31.74;
        }
        else if (measurement.encoder_position > (steering_centre + 30)) {
            // Steering right
            steering_angle_radians = measurement.encoder_position * 0.00006499 - 31.07;
        }
        else
        {
            // Going forward
            steering_angle_radians = 0.0;
        }
    }

    // Locked rear wheels drive
    else if (wheel_drive_mode == 0)
    {
        if (measurement.encoder_position < (steering_centre - 30))
        {
            // Steering left
            steering_angle_radians = measurement.encoder_position * 0.00006635 - 31.74;
        }
        else if (measurement.encoder_position > (steering_centre + 30)) {
            // Steering right
            steering_angle_radians = measurement.encoder_position * 0.00006499 - 31.07;
        }
        else
        {
            // Going forward
            steering_angle_radians = 0.0;
        }
    }

    // All wheel drive
    else if (wheel_drive_mode == 2)
    {
        if (measurement.encoder_position < (steering_centre - 30))
        {
            // Steering left
            steering_angle_radians = measurement.encoder_position * 0.00006635 - 31.74;
        }
        else if (measurement.encoder_position > (steering_centre + 30)) {
            // Steering right
            steering_angle_radians = measurement.encoder_position * 0.00006499 - 31.07;
        }
        else
        {
            // Going forward
            steering_angle_radians = 0.0;
        }
    }

    // No mode received?
    else
    {
        ROS_INFO("No driving mode received, check atv_dash_gas_pedal_measurement topic");
    }

    this->steering_angle = steering_angle_radians;

    this->is_steering_received = true;
    if (this->is_measurements_received())
    {
       this->update_state();
    }
}

// Receiving dashboard controls to update driving mode
void KinematicsNode::dashGasPedal_measurement_callback(const atv_can::DashGasPedalMeasurement& measurement)
{
    this->wheel_drive_mode = measurement.all_wheel_drive;
}

// Calculating velocity of the ATV. (change the name of the function) 
double KinematicsNode::average_velocity(const atv_can::OdometryMeasurement& measurement)
{
	// Wheel velocities given in mm/s, need to transform to m/s
	// -> divide by 1000
	// Also, left wheels report their velocities in inverse
	// -> negate them
	//return ((double)(-measurement.front_left + measurement.front_right - measurement.rear_left + measurement.rear_right))/4000.0;
        return ((double)(- measurement.rear_left + measurement.rear_right))/2000.0;
}

// Updating the current pose (velocity and steering angle)
void KinematicsNode::update_state() 
{
	ros::Time current_time = ros::Time::now();
	ros::Duration sample_time = current_time - this->last_update_;

	geometry_msgs::Pose previous_state = this->state;
	this->state = dead_reckoning(this->state, this->steering_angle, this->current_velocity, sample_time.toSec(), this->distance_of_axis);
	this->last_update_ = current_time;

	nav_msgs::Odometry odometry_msg;
	odometry_msg.header.stamp = current_time;
	odometry_msg.header.frame_id = "odom";
	odometry_msg.child_frame_id = "base_link";
	odometry_msg.pose.pose = this->state;
	odometry_msg.pose.covariance[0] = 0.05;
	odometry_msg.pose.covariance[7] = 0.05;
	odometry_msg.pose.covariance[14] = 0.05;
	odometry_msg.pose.covariance[21] = 0.005;
	odometry_msg.pose.covariance[28] = 0.005;
	odometry_msg.pose.covariance[35] = 0.005;

	double yaw = yaw_from_quaternion(this->state.orientation);
	double previous_yaw = yaw_from_quaternion(previous_state.orientation);

	// Velocity in relation to the ATV frame (x is forward)
	double angle_diff = std::atan2(std::sin(yaw-previous_yaw), std::cos(yaw-previous_yaw));
	odometry_msg.twist.twist.linear.x = this->current_velocity;
	odometry_msg.twist.twist.angular.z = angle_diff / sample_time.toSec();

	odometry_msg.twist.covariance[0] = 0.25;
	odometry_msg.twist.covariance[7] = 0.25;
	odometry_msg.twist.covariance[14] = 0.25;
	odometry_msg.twist.covariance[21] = 0.05;
	odometry_msg.twist.covariance[28] = 0.05;
	odometry_msg.twist.covariance[35] = 0.05;

	this->odometry_publisher.publish(odometry_msg);

	this->is_steering_received = false;
	this->is_odometry_received = false;
}

// Ensuring that velocity and steering angle are received before updating
bool KinematicsNode::is_measurements_received() 
{
	return (is_steering_received && is_odometry_received);
}

int main(int argc, char** argv)
{    
	ros::init(argc, argv, "polaris_kinematics_node");
	KinematicsNode node;
	node.run();
	return 0;
}
#ifndef POLARIS_KINEMATICS
#define POLARIS_KINEMATICS

#include <ros/ros.h>
#include <geometry_msgs/Pose.h>
#include <nav_msgs/Odometry.h>
#include <atv_can/OdometryMeasurement.h>
#include <atv_can/SteeringMeasurement.h>
#include <atv_can/DashGasPedalMeasurement.h>

geometry_msgs::Pose dead_reckoning(geometry_msgs::Pose current_pose, double steer_angle, double v, double sample_time, double dist_axis);

namespace kinematics {

    class KinematicsNode {

    public:

        KinematicsNode();

        void odometry_measurement_callback(const atv_can::OdometryMeasurement& measurement);
        void steering_measurement_callback(const atv_can::SteeringMeasurement& measurement);
        void dashGasPedal_measurement_callback(const atv_can::DashGasPedalMeasurement& measurement);

        void run();

    private:
        

        double average_velocity(const atv_can::OdometryMeasurement& measurement);
        void update_state();

        bool is_measurements_received();

        bool is_steering_received;
        bool is_odometry_received;

        int wheel_drive_mode;

        double steering_angle;
        double current_velocity;

        int steering_min;
        int steering_max;
        int steering_centre;
        double distance_of_axis;
        double distance_of_tracks;

        ros::Time last_update_;

        geometry_msgs::Pose state;
        ros::Subscriber odometry_measurement_subscriber;
        ros::Subscriber steering_measurement_subscriber;
        ros::Subscriber dashGas_measurement_subscriber;
        ros::Publisher odometry_publisher;
        ros::NodeHandle nh;
    };
}
#endif 


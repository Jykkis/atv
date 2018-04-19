#ifndef ATV_PROJECT_JOYSTICK_TELEOP_HEADER
#define ATV_PROJECT_JOYSTICK_TELEOP_HEADER

#include <cstdint>
#include <ros/ros.h>
#include <sensor_msgs/Joy.h>
#include "atv_can/DriveService.h"

class TeleopJoyNode
{
public:
    TeleopJoyNode(int16_t max_torque);

    void read_joystick_input(const sensor_msgs::Joy::ConstPtr& joy);
    void send_controls(ros::ServiceClient& client) const;

    void update_turning_radius(const sensor_msgs::Joy::ConstPtr& joy);
    void update_motor_control(const sensor_msgs::Joy::ConstPtr& joy);

private:

    const int16_t max_torque;

    static constexpr double JOYSTICK_INPUT_SCALE = 32768.0;


    static const int16_t STEERING_MIDDLE_POSITION = 32768;

    int16_t mtr_ctrl;
    uint16_t trn_rad;
};

#endif

#ifndef ATV_CAN_CANMSG_HEADER
#define ATV_CAN_CANMSG_HEADER

#include "ros/ros.h"
#include <iostream>

namespace atv_can {
    struct CanMsg {
        long int id;
        uint64_t data;
        unsigned int data_length;
        unsigned int flag;
        unsigned long int can_timestamp;
        ros::Time ros_timestamp;

        static const unsigned int MESSAGE_ID_ODOMETRY =                0xfb00;
        static const unsigned int MESSAGE_ID_STEERING_COMMANDS =       0xfb01;
        static const unsigned int MESSAGE_ID_STEERING_POSITION =       0xfb02;
        static const unsigned int MESSAGE_ID_DASH_GAS_PEDAL_POSITION = 0xfb03;

        static const unsigned int ATV_CONTROL_MESSAGE_ID =          0xcfb0100;
        static const unsigned int BREAKING_COMMANDS_ID =            0xcfb0400;
    };

    std::ostream& operator<<(std::ostream& stream, const CanMsg& msg);

}

#endif

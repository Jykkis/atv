#include "can_msg.hpp"
#include <iomanip>

std::ostream& atv_can::operator<<(std::ostream& stream, const CanMsg& msg) {
    return stream << "CanMsg :"
                  << "\n    id:            " << std::hex << msg.id
                  << "\n    data:          " << std::hex << msg.data
                  << "\n    length:        " << msg.data_length
                  << "\n    can_timestamp: " << msg.can_timestamp
                  << "\n    ros_timestamp: " << msg.ros_timestamp;
}

#include "can_bus_handler.hpp"
#include <sstream>


using namespace atv_can;

CanBusHandler::CanBusHandler(int bitrate, int channel)
    : handle(canOpenChannel(channel, canOPEN_EXCLUSIVE | canOPEN_REQUIRE_EXTENDED))
{
    if (handle < 0) {
        std::stringstream s;
        s << "canOpenChannel failed, handle returned was " << handle;
        throw CanBusError(s.str());
    }
    canSetBusParams(handle, bitrate, 4, 3, 1, 1, 0); // magic numbers taken from canlib examples, seems legit...
    canSetBusOutputControl(handle, canDRIVER_NORMAL);
    canBusOn(handle);
}

CanBusHandler::~CanBusHandler() {
    canClose(handle);
}

CanMsgStatusInfo CanBusHandler::read_raw_message(CanMsg& message, unsigned int timeout_ms) {
    canStatus status;

    {std::lock_guard<std::mutex> lock(can_bus_mutex);
        // lock_guard blocks until mutex is released,
        // then holds mutex until block goes out of scope
        status = canReadWait(handle, &message.id, &message.data, &message.data_length, &message.flag, &message.can_timestamp, timeout_ms);
        //std::cout << message << std::endl;
    }
    std::stringstream s;
    if (status == canERR_NOMSG) {
        s << "No messages :(" << std::endl;
    } else if (status != canOK) {
        s << "Error in message, status is " << status << std::endl;
    } else {
        s << "Read message " << message;
    }
    return CanMsgStatusInfo(status, s.str());
}

CanMsgStatusInfo CanBusHandler::send_raw_message(const CanMsg& msg) {
    uint64_t data = msg.data;
    canStatus status;

    {std::lock_guard<std::mutex> lock(can_bus_mutex);
        //std::cout << "sending message...\n";
        status = canWrite(handle, msg.id, static_cast<void*>(&data), msg.data_length, canMSG_EXT);
    }
    std::stringstream s;
    if (status != canOK) {
        s << "Failed to send CAN message: " << msg;
    } else {
        s << "CAN message was sent successfully: " << msg;
    }
    return CanMsgStatusInfo(status, s.str());
}

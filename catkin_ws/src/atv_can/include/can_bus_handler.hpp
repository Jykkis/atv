#ifndef ATV_CAN_CANCOMMUNICATOR_HEADER
#define ATV_CAN_CANCOMMUNICATOR_HEADER

#include <canlib.h>
#include "can_msg.hpp"
#include <thread>
#include <mutex>
#include <exception>
#include <utility>

namespace atv_can {

    struct CanMsgStatusInfo {
        canStatus status_code;
        std::string status_string;
        CanMsgStatusInfo(canStatus sc, const std::string& ss) : status_code(sc), status_string(ss) {}
    };

    class CanBusError : public std::runtime_error {
    public:
        CanBusError(const std::string& msg) : std::runtime_error(std::string("CAN bus error: ") + msg) {}
    };

    /*
    * Simple class for reading and writing CAN bus data.
    *
    * Wraps all required functionality from canlib, except
    * canInitializeLibrary(), which needs to be called prior to creating an instance of this class.
    *
    * Reads and writes are synchronized so a CanBusHandler will not write to the CAN bus while it is reading and vice versa.
    * Note that the synchronization happens only at instance level (using std::mutex), which means that the bus is not protected
    * from several instances of this class running simultaneously (whether within the same program or in two separate applications).
    * Simply DO NOT create multiple simultaneous instances of this class on the same CAN bus and you will be fine.
    *
    */
    class CanBusHandler {
    public:
        CanBusHandler(int bitrate, int channel);
        ~CanBusHandler();

        CanMsgStatusInfo read_raw_message(CanMsg& message, unsigned int timeout_ms);
        CanMsgStatusInfo send_raw_message(const CanMsg& msg);
    private:
        std::mutex can_bus_mutex;
        canHandle handle;

        // class is not copyable:
        CanBusHandler(const CanBusHandler& other);
        CanBusHandler& operator=(const CanBusHandler& other);
    };
}

#endif

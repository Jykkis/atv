#ifndef ATV_CAN_CAN_NODE_HEADER
#define ATV_CAN_CAN_NODE_HEADER

#include "can_bus_handler.hpp"
#include "atv_can/DriveService.h"
#include "atv_can/OdometryMeasurement.h"
#include "atv_can/SteeringMeasurement.h"
#include "atv_can/DashGasPedalMeasurement.h"

namespace atv_can {
    class CanNode {
    public:
        CanNode(int CAN_bitrate, int CAN_channel, unsigned int read_timeout_ms, unsigned int publications_per_sec);
        ~CanNode();

        void run();
    private:
        CanBusHandler can_bus_handler;
        atv_can::OdometryMeasurement odo_msg;
        atv_can::SteeringMeasurement steer_msg;
        atv_can::DashGasPedalMeasurement gas_msg;

        unsigned int read_timeout_ms;
        double publication_frequency_hz;
        bool keep_reading;

        CanNode(const CanNode& other);
        CanNode& operator=(const CanNode& other);

        uint64_t generate_can_message_data(const DriveService::Request& req);
        bool serve_send_request(DriveService::Request& req, DriveService::Response& resp);
        void read_next_message();
        void read_forever();

        void run_publisher(ros::NodeHandle& node_handle);
    };
}

#endif

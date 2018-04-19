#ifndef TOOLS_TELEOP_HEADER
#define TOOLS_TELEOP_HEADER

#include "ros/ros.h"
#include <boost/thread/thread.hpp>
#include <boost/bind.hpp>

#include "atv_can/DriveService.h"

#define KEYCODE_RIGHT 0x43
#define KEYCODE_LEFT 0x44
#define KEYCODE_UP 0x41
#define KEYCODE_DOWN 0x42
#define KEYCODE_RESET 0x72
#define KEYCODE_SPACE 0x20
#define KEYCODE_W 0x77
#define KEYCODE_S 0x73
#define KEYCODE_E 0x65
#define KEYCODE_D 0x64
#define KEYCODE_TAB 0x09

#define trq_max 100
#define trq_min -100
#define trq_default 0
#define trq_scale_change 5
#define trq_scale_max 50
#define trq_scale_min 1
#define trq_scale_default 5

#define trn_max 64536
#define trn_min 1000
#define trn_default 32768
#define trn_scale_change 1000
#define trn_scale_max 5000
#define trn_scale_min 500
#define trn_scale_default 1000

#define mtr_mode_default false	//! Check initialization of node

#define vel_max 1000
#define vel_min -1000
#define vel_default 0
#define vel_scale_change 50
#define vel_scale_max 500
#define vel_scale_min 10
#define vel_scale_default 50

#endif

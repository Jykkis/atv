#include "../include/teleop.h"
#include <csignal>
#include <termios.h>
#include <cstdio>
#include <iostream>

class TeleopVehicle
{
public:
  TeleopVehicle();
  void keyLoop();

private:

  ros::NodeHandle nh_;
  int ctrl_ref, ctrl_ref_delta, turn_ref_delta;	// int16
  int turn_ref;					// uinut16
  bool mtr_mode;
  ros::ServiceClient client;
};

TeleopVehicle::TeleopVehicle():
  ctrl_ref(mtr_mode_default*trq_default + !(mtr_mode_default)*vel_default),
  ctrl_ref_delta(mtr_mode_default*trq_scale_default + !(mtr_mode_default)*vel_scale_default),
  turn_ref(trn_default),
  turn_ref_delta(trn_scale_default),
  mtr_mode(mtr_mode_default),
  client(nh_.serviceClient<atv_can::DriveService>("can_service"))
  {}


int kfd = 0;
struct termios cooked, raw;

void quit(int sig)
{
  (void)sig;
  tcsetattr(kfd, TCSANOW, &cooked);
  ros::shutdown();
  exit(0);
}

int maxbound(int arg1, int arg2)
{
  if (arg1>arg2)
	return(arg1);
  else
	return(arg2);
}

int minbound(int arg1, int arg2)
{
  if (arg1<arg2)
	return(arg1);
  else
	return(arg2);
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "teleop_vehicle");
  TeleopVehicle teleop_vehicle;

  signal(SIGINT,quit);

  teleop_vehicle.keyLoop();

  return(0);
}


void TeleopVehicle::keyLoop()
{
  char c;
  bool detect=false;
  atv_can::DriveService mesg;

  // get the console in raw mode
  tcgetattr(kfd, &cooked);
  memcpy(&raw, &cooked, sizeof(struct termios));
  raw.c_lflag &=~ (ICANON | ECHO);
  // Setting a new line, then end of file
  raw.c_cc[VEOL] = 1;
  raw.c_cc[VEOF] = 2;
  tcsetattr(kfd, TCSANOW, &raw);
  for(;;)
  {
    for(int clearint = 0; clearint<30; clearint++)
    {
    std::cout << " " << std::endl;
    }
    puts("Terminal Teleop. Vehicle Drive");
    puts("Set throttle/velocity and turning pulse references, and press SPACE to send");
    puts("Use arrow keys to set throttle/velocity and turning references");
    puts("Use W/S and E/D to increase/decrease forward control and turning change step");
    puts("Use R to reset values to defaults of current mode");
    puts("Use TAB to toggle between velocity and torque control modes (setting to default)");
    if (mtr_mode)
	{
	std::cout << "Torque %: " << ctrl_ref << ", Turning reference: " << turn_ref << std::endl;
	std::cout << "Torque delta %: " << ctrl_ref_delta << ", Turning reference delta: " << turn_ref_delta << std::endl;
	}
    else
	{
	std::cout << "Velocity mm/s: " << ctrl_ref << ", Turning reference: " << turn_ref << std::endl;
	std::cout << "Velocity delta mm/s: " << ctrl_ref_delta << ", Turning reference delta: " << turn_ref_delta << std::endl;
	}
    // get the next event from the keyboard
    if(read(kfd, &c, 1) < 0)
    {
      perror("read():");
      exit(-1);
    }

    //ROS_DEBUG("value: 0x%02X\n", c);
    switch(c)
    {
      case KEYCODE_LEFT:
        ROS_DEBUG("LEFT");
        turn_ref = maxbound(turn_ref - turn_ref_delta, trn_min);
	std::cout << turn_ref << std::endl;
        // detect = true;
        break;
      case KEYCODE_RIGHT:
        ROS_DEBUG("RIGHT");
        turn_ref = minbound(turn_ref + turn_ref_delta, trn_max);
        // detect = true;
        break;
      case KEYCODE_UP:
        ROS_DEBUG("UP");
        ctrl_ref = minbound(ctrl_ref + ctrl_ref_delta, mtr_mode*trq_max + !(mtr_mode)*vel_max);
        // detect = true;
        break;
      case KEYCODE_DOWN:
        ROS_DEBUG("DOWN");
        ctrl_ref = maxbound(ctrl_ref - ctrl_ref_delta, mtr_mode*trq_min + !(mtr_mode)*vel_min);
        // detect = true;
        break;
      case KEYCODE_RESET:
        ROS_DEBUG("RESET");
        turn_ref = trn_default;
        turn_ref_delta = trn_scale_default;
	ctrl_ref = mtr_mode*trq_default + !(mtr_mode)*vel_default;
        ctrl_ref_delta = mtr_mode*trq_scale_default + !(mtr_mode)*vel_scale_default;
        detect = true;
        break;
      case KEYCODE_W:
        ROS_DEBUG("MOTOR CONTROL SCALE UP");
        ctrl_ref_delta = minbound(ctrl_ref_delta + mtr_mode*trq_scale_change + !(mtr_mode)*vel_scale_change, mtr_mode*trq_scale_max + !(mtr_mode)*vel_scale_max);
        // detect = true;
        break;
      case KEYCODE_S:
        ROS_DEBUG("MOTOR CONTROL SCALE DOWN");
        ctrl_ref_delta = maxbound(ctrl_ref_delta - mtr_mode*trq_scale_change - !(mtr_mode)*vel_scale_change, mtr_mode*trq_scale_min + !(mtr_mode)*vel_scale_min);
        // detect = true;
        break;
      case KEYCODE_SPACE:
        ROS_DEBUG("SEND USER CONTROL");
        detect = true;
        break;
      case KEYCODE_E:
        ROS_DEBUG("ROTATION SCALE UP");
        turn_ref_delta = minbound(turn_ref_delta + trn_scale_change, trn_scale_max);
        // detect = true;
        break;
      case KEYCODE_D:
        ROS_DEBUG("ROTATION SCALE DOWN");
        turn_ref_delta = maxbound(turn_ref_delta - trn_scale_change, trn_scale_min);
        // detect = true;
        break;
      case KEYCODE_TAB:
	ROS_DEBUG("CHANGING CONTROL MODE VELOCITY<->TORQUE");
	if (mtr_mode)
	{
		// changing to velocity control
		mtr_mode = false;
		ctrl_ref = vel_default;
        	ctrl_ref_delta = vel_scale_default;
       	}
	else
	{
		mtr_mode = true;
		ctrl_ref = trq_default;
        	ctrl_ref_delta = trq_scale_default;
	}
	break;
    }
    std::cout << "Middle" << std::endl;
    if(detect ==true)
    {
      //std::cout << ">>> SENDING VALUES <<<" << std::endl;
      mesg.request.turning_radius = turn_ref;
      mesg.request.motor_control = ctrl_ref;
      mesg.request.gear_ratio = 0;
      mesg.request.all_wheel_drive = 0;
      mesg.request.control_mode = mtr_mode;	//true for torque
      mesg.request.direction = true;
      if (client.call(mesg))
      {
        std::cout << "sent-recieved" << mesg.response.status << std::endl;
        ROS_DEBUG("can_talker sent-recieved");
      }
      else
      {
        std::cout << "Failed to call service" << std::endl;
        ROS_ERROR("Failed to call service can_service");
      }
      detect=false;
      //std::cout << "sent-recieved" << mesg.response.status << std::endl;
    }
    else
    {
     std::cout << "NO ! sent-recieved" << std::endl;
    /*  std::cout << "> NOT SENDING VALUES <" << std::endl;
      mesg.request.turning_radius = turn_ref;//last
      mesg.request.motor_control = 0;
      mesg.request.gear_ratio = 1;
      mesg.request.all_wheel_drive = 1;
      mesg.request.control_mode = true;
      mesg.request.direction = true;
      teleop_key_pub_.publish(mesg);    */
    }

  }


  return;
}

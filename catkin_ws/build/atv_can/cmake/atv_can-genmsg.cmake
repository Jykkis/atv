# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "atv_can: 3 messages, 1 services")

set(MSG_I_FLAGS "-Iatv_can:/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg;-Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(atv_can_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/OdometryMeasurement.msg" NAME_WE)
add_custom_target(_atv_can_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atv_can" "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/OdometryMeasurement.msg" ""
)

get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/srv/DriveService.srv" NAME_WE)
add_custom_target(_atv_can_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atv_can" "/home/atv/atv-project-2017/catkin_ws/src/atv_can/srv/DriveService.srv" ""
)

get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/SteeringMeasurement.msg" NAME_WE)
add_custom_target(_atv_can_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atv_can" "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/SteeringMeasurement.msg" ""
)

get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/DashGasPedalMeasurement.msg" NAME_WE)
add_custom_target(_atv_can_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atv_can" "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/DashGasPedalMeasurement.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(atv_can
  "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/SteeringMeasurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atv_can
)
_generate_msg_cpp(atv_can
  "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/OdometryMeasurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atv_can
)
_generate_msg_cpp(atv_can
  "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/DashGasPedalMeasurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atv_can
)

### Generating Services
_generate_srv_cpp(atv_can
  "/home/atv/atv-project-2017/catkin_ws/src/atv_can/srv/DriveService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atv_can
)

### Generating Module File
_generate_module_cpp(atv_can
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atv_can
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(atv_can_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(atv_can_generate_messages atv_can_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/OdometryMeasurement.msg" NAME_WE)
add_dependencies(atv_can_generate_messages_cpp _atv_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/srv/DriveService.srv" NAME_WE)
add_dependencies(atv_can_generate_messages_cpp _atv_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/SteeringMeasurement.msg" NAME_WE)
add_dependencies(atv_can_generate_messages_cpp _atv_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/DashGasPedalMeasurement.msg" NAME_WE)
add_dependencies(atv_can_generate_messages_cpp _atv_can_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atv_can_gencpp)
add_dependencies(atv_can_gencpp atv_can_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atv_can_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(atv_can
  "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/SteeringMeasurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atv_can
)
_generate_msg_eus(atv_can
  "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/OdometryMeasurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atv_can
)
_generate_msg_eus(atv_can
  "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/DashGasPedalMeasurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atv_can
)

### Generating Services
_generate_srv_eus(atv_can
  "/home/atv/atv-project-2017/catkin_ws/src/atv_can/srv/DriveService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atv_can
)

### Generating Module File
_generate_module_eus(atv_can
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atv_can
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(atv_can_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(atv_can_generate_messages atv_can_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/OdometryMeasurement.msg" NAME_WE)
add_dependencies(atv_can_generate_messages_eus _atv_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/srv/DriveService.srv" NAME_WE)
add_dependencies(atv_can_generate_messages_eus _atv_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/SteeringMeasurement.msg" NAME_WE)
add_dependencies(atv_can_generate_messages_eus _atv_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/DashGasPedalMeasurement.msg" NAME_WE)
add_dependencies(atv_can_generate_messages_eus _atv_can_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atv_can_geneus)
add_dependencies(atv_can_geneus atv_can_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atv_can_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(atv_can
  "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/SteeringMeasurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atv_can
)
_generate_msg_lisp(atv_can
  "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/OdometryMeasurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atv_can
)
_generate_msg_lisp(atv_can
  "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/DashGasPedalMeasurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atv_can
)

### Generating Services
_generate_srv_lisp(atv_can
  "/home/atv/atv-project-2017/catkin_ws/src/atv_can/srv/DriveService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atv_can
)

### Generating Module File
_generate_module_lisp(atv_can
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atv_can
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(atv_can_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(atv_can_generate_messages atv_can_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/OdometryMeasurement.msg" NAME_WE)
add_dependencies(atv_can_generate_messages_lisp _atv_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/srv/DriveService.srv" NAME_WE)
add_dependencies(atv_can_generate_messages_lisp _atv_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/SteeringMeasurement.msg" NAME_WE)
add_dependencies(atv_can_generate_messages_lisp _atv_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/DashGasPedalMeasurement.msg" NAME_WE)
add_dependencies(atv_can_generate_messages_lisp _atv_can_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atv_can_genlisp)
add_dependencies(atv_can_genlisp atv_can_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atv_can_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(atv_can
  "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/SteeringMeasurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atv_can
)
_generate_msg_py(atv_can
  "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/OdometryMeasurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atv_can
)
_generate_msg_py(atv_can
  "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/DashGasPedalMeasurement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atv_can
)

### Generating Services
_generate_srv_py(atv_can
  "/home/atv/atv-project-2017/catkin_ws/src/atv_can/srv/DriveService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atv_can
)

### Generating Module File
_generate_module_py(atv_can
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atv_can
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(atv_can_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(atv_can_generate_messages atv_can_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/OdometryMeasurement.msg" NAME_WE)
add_dependencies(atv_can_generate_messages_py _atv_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/srv/DriveService.srv" NAME_WE)
add_dependencies(atv_can_generate_messages_py _atv_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/SteeringMeasurement.msg" NAME_WE)
add_dependencies(atv_can_generate_messages_py _atv_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atv/atv-project-2017/catkin_ws/src/atv_can/msg/DashGasPedalMeasurement.msg" NAME_WE)
add_dependencies(atv_can_generate_messages_py _atv_can_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atv_can_genpy)
add_dependencies(atv_can_genpy atv_can_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atv_can_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atv_can)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atv_can
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(atv_can_generate_messages_cpp std_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atv_can)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atv_can
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(atv_can_generate_messages_eus std_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atv_can)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atv_can
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(atv_can_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atv_can)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atv_can\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atv_can
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(atv_can_generate_messages_py std_msgs_generate_messages_py)

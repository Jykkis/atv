# Install script for directory: /home/atv/atv-project-2017/catkin_ws/src/geographic_info-master/geographic_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/atv/atv-project-2017/catkin_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/geographic_msgs/msg" TYPE FILE FILES
    "/home/atv/atv-project-2017/catkin_ws/src/geographic_info-master/geographic_msgs/msg/BoundingBox.msg"
    "/home/atv/atv-project-2017/catkin_ws/src/geographic_info-master/geographic_msgs/msg/GeographicMapChanges.msg"
    "/home/atv/atv-project-2017/catkin_ws/src/geographic_info-master/geographic_msgs/msg/GeographicMap.msg"
    "/home/atv/atv-project-2017/catkin_ws/src/geographic_info-master/geographic_msgs/msg/GeoPoint.msg"
    "/home/atv/atv-project-2017/catkin_ws/src/geographic_info-master/geographic_msgs/msg/GeoPose.msg"
    "/home/atv/atv-project-2017/catkin_ws/src/geographic_info-master/geographic_msgs/msg/KeyValue.msg"
    "/home/atv/atv-project-2017/catkin_ws/src/geographic_info-master/geographic_msgs/msg/MapFeature.msg"
    "/home/atv/atv-project-2017/catkin_ws/src/geographic_info-master/geographic_msgs/msg/RouteNetwork.msg"
    "/home/atv/atv-project-2017/catkin_ws/src/geographic_info-master/geographic_msgs/msg/RoutePath.msg"
    "/home/atv/atv-project-2017/catkin_ws/src/geographic_info-master/geographic_msgs/msg/RouteSegment.msg"
    "/home/atv/atv-project-2017/catkin_ws/src/geographic_info-master/geographic_msgs/msg/WayPoint.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/geographic_msgs/srv" TYPE FILE FILES
    "/home/atv/atv-project-2017/catkin_ws/src/geographic_info-master/geographic_msgs/srv/GetGeographicMap.srv"
    "/home/atv/atv-project-2017/catkin_ws/src/geographic_info-master/geographic_msgs/srv/GetRoutePlan.srv"
    "/home/atv/atv-project-2017/catkin_ws/src/geographic_info-master/geographic_msgs/srv/UpdateGeographicMap.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/geographic_msgs/cmake" TYPE FILE FILES "/home/atv/atv-project-2017/catkin_ws/build/geographic_info-master/geographic_msgs/catkin_generated/installspace/geographic_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/atv/atv-project-2017/catkin_ws/devel/include/geographic_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/atv/atv-project-2017/catkin_ws/devel/share/roseus/ros/geographic_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/atv/atv-project-2017/catkin_ws/devel/share/common-lisp/ros/geographic_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/atv/atv-project-2017/catkin_ws/devel/lib/python2.7/dist-packages/geographic_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/atv/atv-project-2017/catkin_ws/devel/lib/python2.7/dist-packages/geographic_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/atv/atv-project-2017/catkin_ws/build/geographic_info-master/geographic_msgs/catkin_generated/installspace/geographic_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/geographic_msgs/cmake" TYPE FILE FILES "/home/atv/atv-project-2017/catkin_ws/build/geographic_info-master/geographic_msgs/catkin_generated/installspace/geographic_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/geographic_msgs/cmake" TYPE FILE FILES
    "/home/atv/atv-project-2017/catkin_ws/build/geographic_info-master/geographic_msgs/catkin_generated/installspace/geographic_msgsConfig.cmake"
    "/home/atv/atv-project-2017/catkin_ws/build/geographic_info-master/geographic_msgs/catkin_generated/installspace/geographic_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/geographic_msgs" TYPE FILE FILES "/home/atv/atv-project-2017/catkin_ws/src/geographic_info-master/geographic_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")


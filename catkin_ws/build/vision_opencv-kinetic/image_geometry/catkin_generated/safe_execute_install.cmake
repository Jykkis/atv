execute_process(COMMAND "/home/atv/atv-project-2017/catkin_ws/build/vision_opencv-kinetic/image_geometry/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/atv/atv-project-2017/catkin_ws/build/vision_opencv-kinetic/image_geometry/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

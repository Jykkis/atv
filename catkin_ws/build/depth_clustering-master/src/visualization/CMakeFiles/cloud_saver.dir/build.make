# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/atv/atv-project-2017/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/atv/atv-project-2017/catkin_ws/build

# Include any dependencies generated for this target.
include depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/depend.make

# Include the progress variables for this target.
include depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/progress.make

# Include the compile flags for this target's objects.
include depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/flags.make

depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/cloud_saver.cpp.o: depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/flags.make
depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/cloud_saver.cpp.o: /home/atv/atv-project-2017/catkin_ws/src/depth_clustering-master/src/visualization/cloud_saver.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/atv/atv-project-2017/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/cloud_saver.cpp.o"
	cd /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/visualization && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cloud_saver.dir/cloud_saver.cpp.o -c /home/atv/atv-project-2017/catkin_ws/src/depth_clustering-master/src/visualization/cloud_saver.cpp

depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/cloud_saver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cloud_saver.dir/cloud_saver.cpp.i"
	cd /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/visualization && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/atv/atv-project-2017/catkin_ws/src/depth_clustering-master/src/visualization/cloud_saver.cpp > CMakeFiles/cloud_saver.dir/cloud_saver.cpp.i

depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/cloud_saver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cloud_saver.dir/cloud_saver.cpp.s"
	cd /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/visualization && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/atv/atv-project-2017/catkin_ws/src/depth_clustering-master/src/visualization/cloud_saver.cpp -o CMakeFiles/cloud_saver.dir/cloud_saver.cpp.s

depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/cloud_saver.cpp.o.requires:
.PHONY : depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/cloud_saver.cpp.o.requires

depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/cloud_saver.cpp.o.provides: depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/cloud_saver.cpp.o.requires
	$(MAKE) -f depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/build.make depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/cloud_saver.cpp.o.provides.build
.PHONY : depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/cloud_saver.cpp.o.provides

depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/cloud_saver.cpp.o.provides.build: depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/cloud_saver.cpp.o

# Object files for target cloud_saver
cloud_saver_OBJECTS = \
"CMakeFiles/cloud_saver.dir/cloud_saver.cpp.o"

# External object files for target cloud_saver
cloud_saver_EXTERNAL_OBJECTS =

/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/cloud_saver.cpp.o
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/build.make
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libpcl_common.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libpcl_octree.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libOpenNI.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkCommon.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkRendering.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkHybrid.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkCharts.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libpcl_io.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libOpenNI.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkCommon.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkRendering.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkHybrid.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkCharts.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_videostab.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_video.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_superres.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_stitching.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_photo.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_ocl.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_objdetect.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_nonfree.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_ml.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_legacy.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_imgproc.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_highgui.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_gpu.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_flann.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_features2d.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_core.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_contrib.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_calib3d.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libpcl_common.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libpcl_octree.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libpcl_io.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkViews.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkInfovis.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkWidgets.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkHybrid.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkParallel.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkVolumeRendering.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkRendering.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkGraphics.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkImaging.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkIO.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkFiltering.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtkCommon.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/lib/libvtksys.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_nonfree.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_ocl.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_gpu.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_photo.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_objdetect.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_legacy.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_video.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_ml.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_calib3d.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_features2d.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_highgui.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_imgproc.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_flann.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: /usr/local/lib/libopencv_core.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so: depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library /home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so"
	cd /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/visualization && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cloud_saver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/build: /home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud_saver.so
.PHONY : depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/build

depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/requires: depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/cloud_saver.cpp.o.requires
.PHONY : depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/requires

depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/clean:
	cd /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/visualization && $(CMAKE_COMMAND) -P CMakeFiles/cloud_saver.dir/cmake_clean.cmake
.PHONY : depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/clean

depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/depend:
	cd /home/atv/atv-project-2017/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/atv/atv-project-2017/catkin_ws/src /home/atv/atv-project-2017/catkin_ws/src/depth_clustering-master/src/visualization /home/atv/atv-project-2017/catkin_ws/build /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/visualization /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : depth_clustering-master/src/visualization/CMakeFiles/cloud_saver.dir/depend


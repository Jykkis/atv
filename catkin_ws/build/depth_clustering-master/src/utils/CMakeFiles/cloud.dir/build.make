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
include depth_clustering-master/src/utils/CMakeFiles/cloud.dir/depend.make

# Include the progress variables for this target.
include depth_clustering-master/src/utils/CMakeFiles/cloud.dir/progress.make

# Include the compile flags for this target's objects.
include depth_clustering-master/src/utils/CMakeFiles/cloud.dir/flags.make

depth_clustering-master/src/utils/CMakeFiles/cloud.dir/cloud.cpp.o: depth_clustering-master/src/utils/CMakeFiles/cloud.dir/flags.make
depth_clustering-master/src/utils/CMakeFiles/cloud.dir/cloud.cpp.o: /home/atv/atv-project-2017/catkin_ws/src/depth_clustering-master/src/utils/cloud.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/atv/atv-project-2017/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object depth_clustering-master/src/utils/CMakeFiles/cloud.dir/cloud.cpp.o"
	cd /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cloud.dir/cloud.cpp.o -c /home/atv/atv-project-2017/catkin_ws/src/depth_clustering-master/src/utils/cloud.cpp

depth_clustering-master/src/utils/CMakeFiles/cloud.dir/cloud.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cloud.dir/cloud.cpp.i"
	cd /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/atv/atv-project-2017/catkin_ws/src/depth_clustering-master/src/utils/cloud.cpp > CMakeFiles/cloud.dir/cloud.cpp.i

depth_clustering-master/src/utils/CMakeFiles/cloud.dir/cloud.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cloud.dir/cloud.cpp.s"
	cd /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/atv/atv-project-2017/catkin_ws/src/depth_clustering-master/src/utils/cloud.cpp -o CMakeFiles/cloud.dir/cloud.cpp.s

depth_clustering-master/src/utils/CMakeFiles/cloud.dir/cloud.cpp.o.requires:
.PHONY : depth_clustering-master/src/utils/CMakeFiles/cloud.dir/cloud.cpp.o.requires

depth_clustering-master/src/utils/CMakeFiles/cloud.dir/cloud.cpp.o.provides: depth_clustering-master/src/utils/CMakeFiles/cloud.dir/cloud.cpp.o.requires
	$(MAKE) -f depth_clustering-master/src/utils/CMakeFiles/cloud.dir/build.make depth_clustering-master/src/utils/CMakeFiles/cloud.dir/cloud.cpp.o.provides.build
.PHONY : depth_clustering-master/src/utils/CMakeFiles/cloud.dir/cloud.cpp.o.provides

depth_clustering-master/src/utils/CMakeFiles/cloud.dir/cloud.cpp.o.provides.build: depth_clustering-master/src/utils/CMakeFiles/cloud.dir/cloud.cpp.o

depth_clustering-master/src/utils/CMakeFiles/cloud.dir/rich_point.cpp.o: depth_clustering-master/src/utils/CMakeFiles/cloud.dir/flags.make
depth_clustering-master/src/utils/CMakeFiles/cloud.dir/rich_point.cpp.o: /home/atv/atv-project-2017/catkin_ws/src/depth_clustering-master/src/utils/rich_point.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/atv/atv-project-2017/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object depth_clustering-master/src/utils/CMakeFiles/cloud.dir/rich_point.cpp.o"
	cd /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cloud.dir/rich_point.cpp.o -c /home/atv/atv-project-2017/catkin_ws/src/depth_clustering-master/src/utils/rich_point.cpp

depth_clustering-master/src/utils/CMakeFiles/cloud.dir/rich_point.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cloud.dir/rich_point.cpp.i"
	cd /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/atv/atv-project-2017/catkin_ws/src/depth_clustering-master/src/utils/rich_point.cpp > CMakeFiles/cloud.dir/rich_point.cpp.i

depth_clustering-master/src/utils/CMakeFiles/cloud.dir/rich_point.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cloud.dir/rich_point.cpp.s"
	cd /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/atv/atv-project-2017/catkin_ws/src/depth_clustering-master/src/utils/rich_point.cpp -o CMakeFiles/cloud.dir/rich_point.cpp.s

depth_clustering-master/src/utils/CMakeFiles/cloud.dir/rich_point.cpp.o.requires:
.PHONY : depth_clustering-master/src/utils/CMakeFiles/cloud.dir/rich_point.cpp.o.requires

depth_clustering-master/src/utils/CMakeFiles/cloud.dir/rich_point.cpp.o.provides: depth_clustering-master/src/utils/CMakeFiles/cloud.dir/rich_point.cpp.o.requires
	$(MAKE) -f depth_clustering-master/src/utils/CMakeFiles/cloud.dir/build.make depth_clustering-master/src/utils/CMakeFiles/cloud.dir/rich_point.cpp.o.provides.build
.PHONY : depth_clustering-master/src/utils/CMakeFiles/cloud.dir/rich_point.cpp.o.provides

depth_clustering-master/src/utils/CMakeFiles/cloud.dir/rich_point.cpp.o.provides.build: depth_clustering-master/src/utils/CMakeFiles/cloud.dir/rich_point.cpp.o

# Object files for target cloud
cloud_OBJECTS = \
"CMakeFiles/cloud.dir/cloud.cpp.o" \
"CMakeFiles/cloud.dir/rich_point.cpp.o"

# External object files for target cloud
cloud_EXTERNAL_OBJECTS =

/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: depth_clustering-master/src/utils/CMakeFiles/cloud.dir/cloud.cpp.o
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: depth_clustering-master/src/utils/CMakeFiles/cloud.dir/rich_point.cpp.o
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: depth_clustering-master/src/utils/CMakeFiles/cloud.dir/build.make
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /home/atv/atv-project-2017/catkin_ws/devel/lib/libprojections.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_videostab.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_video.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_superres.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_stitching.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_photo.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_ocl.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_objdetect.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_nonfree.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_ml.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_legacy.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_imgproc.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_highgui.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_gpu.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_flann.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_features2d.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_core.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_contrib.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_calib3d.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libpcl_common.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libpcl_octree.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libOpenNI.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkCommon.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkRendering.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkHybrid.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkCharts.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libpcl_io.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libOpenNI.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkCommon.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkRendering.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkHybrid.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkCharts.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_nonfree.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_ocl.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_gpu.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_photo.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_objdetect.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_legacy.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_video.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_ml.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_calib3d.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_features2d.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_highgui.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_imgproc.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_flann.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/local/lib/libopencv_core.so.2.4.9
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libpcl_common.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libpcl_octree.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libpcl_io.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkViews.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkInfovis.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkWidgets.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkHybrid.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkParallel.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkVolumeRendering.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkRendering.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkGraphics.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkImaging.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkIO.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkFiltering.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtkCommon.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: /usr/lib/libvtksys.so.5.8.0
/home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so: depth_clustering-master/src/utils/CMakeFiles/cloud.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library /home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so"
	cd /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cloud.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
depth_clustering-master/src/utils/CMakeFiles/cloud.dir/build: /home/atv/atv-project-2017/catkin_ws/devel/lib/libcloud.so
.PHONY : depth_clustering-master/src/utils/CMakeFiles/cloud.dir/build

depth_clustering-master/src/utils/CMakeFiles/cloud.dir/requires: depth_clustering-master/src/utils/CMakeFiles/cloud.dir/cloud.cpp.o.requires
depth_clustering-master/src/utils/CMakeFiles/cloud.dir/requires: depth_clustering-master/src/utils/CMakeFiles/cloud.dir/rich_point.cpp.o.requires
.PHONY : depth_clustering-master/src/utils/CMakeFiles/cloud.dir/requires

depth_clustering-master/src/utils/CMakeFiles/cloud.dir/clean:
	cd /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/utils && $(CMAKE_COMMAND) -P CMakeFiles/cloud.dir/cmake_clean.cmake
.PHONY : depth_clustering-master/src/utils/CMakeFiles/cloud.dir/clean

depth_clustering-master/src/utils/CMakeFiles/cloud.dir/depend:
	cd /home/atv/atv-project-2017/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/atv/atv-project-2017/catkin_ws/src /home/atv/atv-project-2017/catkin_ws/src/depth_clustering-master/src/utils /home/atv/atv-project-2017/catkin_ws/build /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/utils /home/atv/atv-project-2017/catkin_ws/build/depth_clustering-master/src/utils/CMakeFiles/cloud.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : depth_clustering-master/src/utils/CMakeFiles/cloud.dir/depend


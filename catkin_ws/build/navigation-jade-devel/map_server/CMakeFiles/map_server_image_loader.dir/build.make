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
include navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/depend.make

# Include the progress variables for this target.
include navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/progress.make

# Include the compile flags for this target's objects.
include navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/flags.make

navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.o: navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/flags.make
navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.o: /home/atv/atv-project-2017/catkin_ws/src/navigation-jade-devel/map_server/src/image_loader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/atv/atv-project-2017/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.o"
	cd /home/atv/atv-project-2017/catkin_ws/build/navigation-jade-devel/map_server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.o -c /home/atv/atv-project-2017/catkin_ws/src/navigation-jade-devel/map_server/src/image_loader.cpp

navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.i"
	cd /home/atv/atv-project-2017/catkin_ws/build/navigation-jade-devel/map_server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/atv/atv-project-2017/catkin_ws/src/navigation-jade-devel/map_server/src/image_loader.cpp > CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.i

navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.s"
	cd /home/atv/atv-project-2017/catkin_ws/build/navigation-jade-devel/map_server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/atv/atv-project-2017/catkin_ws/src/navigation-jade-devel/map_server/src/image_loader.cpp -o CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.s

navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.o.requires:
.PHONY : navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.o.requires

navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.o.provides: navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.o.requires
	$(MAKE) -f navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/build.make navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.o.provides.build
.PHONY : navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.o.provides

navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.o.provides.build: navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.o

# Object files for target map_server_image_loader
map_server_image_loader_OBJECTS = \
"CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.o"

# External object files for target map_server_image_loader
map_server_image_loader_EXTERNAL_OBJECTS =

/home/atv/atv-project-2017/catkin_ws/devel/lib/libmap_server_image_loader.so: navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.o
/home/atv/atv-project-2017/catkin_ws/devel/lib/libmap_server_image_loader.so: navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/build.make
/home/atv/atv-project-2017/catkin_ws/devel/lib/libmap_server_image_loader.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/atv/atv-project-2017/catkin_ws/devel/lib/libmap_server_image_loader.so: navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library /home/atv/atv-project-2017/catkin_ws/devel/lib/libmap_server_image_loader.so"
	cd /home/atv/atv-project-2017/catkin_ws/build/navigation-jade-devel/map_server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/map_server_image_loader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/build: /home/atv/atv-project-2017/catkin_ws/devel/lib/libmap_server_image_loader.so
.PHONY : navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/build

navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/requires: navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/src/image_loader.cpp.o.requires
.PHONY : navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/requires

navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/clean:
	cd /home/atv/atv-project-2017/catkin_ws/build/navigation-jade-devel/map_server && $(CMAKE_COMMAND) -P CMakeFiles/map_server_image_loader.dir/cmake_clean.cmake
.PHONY : navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/clean

navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/depend:
	cd /home/atv/atv-project-2017/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/atv/atv-project-2017/catkin_ws/src /home/atv/atv-project-2017/catkin_ws/src/navigation-jade-devel/map_server /home/atv/atv-project-2017/catkin_ws/build /home/atv/atv-project-2017/catkin_ws/build/navigation-jade-devel/map_server /home/atv/atv-project-2017/catkin_ws/build/navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : navigation-jade-devel/map_server/CMakeFiles/map_server_image_loader.dir/depend

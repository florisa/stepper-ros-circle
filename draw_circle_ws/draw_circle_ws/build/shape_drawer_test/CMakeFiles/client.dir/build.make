# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/thiagoviek/dev/ROS/draw_circle_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thiagoviek/dev/ROS/draw_circle_ws/build

# Include any dependencies generated for this target.
include shape_drawer_test/CMakeFiles/client.dir/depend.make

# Include the progress variables for this target.
include shape_drawer_test/CMakeFiles/client.dir/progress.make

# Include the compile flags for this target's objects.
include shape_drawer_test/CMakeFiles/client.dir/flags.make

shape_drawer_test/CMakeFiles/client.dir/src/client.cpp.o: shape_drawer_test/CMakeFiles/client.dir/flags.make
shape_drawer_test/CMakeFiles/client.dir/src/client.cpp.o: /home/thiagoviek/dev/ROS/draw_circle_ws/src/shape_drawer_test/src/client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thiagoviek/dev/ROS/draw_circle_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object shape_drawer_test/CMakeFiles/client.dir/src/client.cpp.o"
	cd /home/thiagoviek/dev/ROS/draw_circle_ws/build/shape_drawer_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/client.cpp.o -c /home/thiagoviek/dev/ROS/draw_circle_ws/src/shape_drawer_test/src/client.cpp

shape_drawer_test/CMakeFiles/client.dir/src/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/client.cpp.i"
	cd /home/thiagoviek/dev/ROS/draw_circle_ws/build/shape_drawer_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thiagoviek/dev/ROS/draw_circle_ws/src/shape_drawer_test/src/client.cpp > CMakeFiles/client.dir/src/client.cpp.i

shape_drawer_test/CMakeFiles/client.dir/src/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/client.cpp.s"
	cd /home/thiagoviek/dev/ROS/draw_circle_ws/build/shape_drawer_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thiagoviek/dev/ROS/draw_circle_ws/src/shape_drawer_test/src/client.cpp -o CMakeFiles/client.dir/src/client.cpp.s

shape_drawer_test/CMakeFiles/client.dir/src/client.cpp.o.requires:

.PHONY : shape_drawer_test/CMakeFiles/client.dir/src/client.cpp.o.requires

shape_drawer_test/CMakeFiles/client.dir/src/client.cpp.o.provides: shape_drawer_test/CMakeFiles/client.dir/src/client.cpp.o.requires
	$(MAKE) -f shape_drawer_test/CMakeFiles/client.dir/build.make shape_drawer_test/CMakeFiles/client.dir/src/client.cpp.o.provides.build
.PHONY : shape_drawer_test/CMakeFiles/client.dir/src/client.cpp.o.provides

shape_drawer_test/CMakeFiles/client.dir/src/client.cpp.o.provides.build: shape_drawer_test/CMakeFiles/client.dir/src/client.cpp.o


# Object files for target client
client_OBJECTS = \
"CMakeFiles/client.dir/src/client.cpp.o"

# External object files for target client
client_EXTERNAL_OBJECTS =

/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: shape_drawer_test/CMakeFiles/client.dir/src/client.cpp.o
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: shape_drawer_test/CMakeFiles/client.dir/build.make
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /opt/ros/melodic/lib/libroscpp.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /opt/ros/melodic/lib/librosconsole.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /opt/ros/melodic/lib/librostime.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /opt/ros/melodic/lib/libcpp_common.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client: shape_drawer_test/CMakeFiles/client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thiagoviek/dev/ROS/draw_circle_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client"
	cd /home/thiagoviek/dev/ROS/draw_circle_ws/build/shape_drawer_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
shape_drawer_test/CMakeFiles/client.dir/build: /home/thiagoviek/dev/ROS/draw_circle_ws/devel/lib/shape_drawer_test/client

.PHONY : shape_drawer_test/CMakeFiles/client.dir/build

shape_drawer_test/CMakeFiles/client.dir/requires: shape_drawer_test/CMakeFiles/client.dir/src/client.cpp.o.requires

.PHONY : shape_drawer_test/CMakeFiles/client.dir/requires

shape_drawer_test/CMakeFiles/client.dir/clean:
	cd /home/thiagoviek/dev/ROS/draw_circle_ws/build/shape_drawer_test && $(CMAKE_COMMAND) -P CMakeFiles/client.dir/cmake_clean.cmake
.PHONY : shape_drawer_test/CMakeFiles/client.dir/clean

shape_drawer_test/CMakeFiles/client.dir/depend:
	cd /home/thiagoviek/dev/ROS/draw_circle_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thiagoviek/dev/ROS/draw_circle_ws/src /home/thiagoviek/dev/ROS/draw_circle_ws/src/shape_drawer_test /home/thiagoviek/dev/ROS/draw_circle_ws/build /home/thiagoviek/dev/ROS/draw_circle_ws/build/shape_drawer_test /home/thiagoviek/dev/ROS/draw_circle_ws/build/shape_drawer_test/CMakeFiles/client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : shape_drawer_test/CMakeFiles/client.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/ubuntu/dev/VXConcurrentTest/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/dev/VXConcurrentTest/concurrentVX

# Include any dependencies generated for this target.
include CMakeFiles/concurrentVX.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/concurrentVX.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/concurrentVX.dir/flags.make

CMakeFiles/concurrentVX.dir/main.cpp.o: CMakeFiles/concurrentVX.dir/flags.make
CMakeFiles/concurrentVX.dir/main.cpp.o: /home/ubuntu/dev/VXConcurrentTest/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/dev/VXConcurrentTest/concurrentVX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/concurrentVX.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/concurrentVX.dir/main.cpp.o -c /home/ubuntu/dev/VXConcurrentTest/src/main.cpp

CMakeFiles/concurrentVX.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/concurrentVX.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/dev/VXConcurrentTest/src/main.cpp > CMakeFiles/concurrentVX.dir/main.cpp.i

CMakeFiles/concurrentVX.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/concurrentVX.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/dev/VXConcurrentTest/src/main.cpp -o CMakeFiles/concurrentVX.dir/main.cpp.s

CMakeFiles/concurrentVX.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/concurrentVX.dir/main.cpp.o.requires

CMakeFiles/concurrentVX.dir/main.cpp.o.provides: CMakeFiles/concurrentVX.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/concurrentVX.dir/build.make CMakeFiles/concurrentVX.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/concurrentVX.dir/main.cpp.o.provides

CMakeFiles/concurrentVX.dir/main.cpp.o.provides.build: CMakeFiles/concurrentVX.dir/main.cpp.o


# Object files for target concurrentVX
concurrentVX_OBJECTS = \
"CMakeFiles/concurrentVX.dir/main.cpp.o"

# External object files for target concurrentVX
concurrentVX_EXTERNAL_OBJECTS =

bin/concurrentVX: CMakeFiles/concurrentVX.dir/main.cpp.o
bin/concurrentVX: CMakeFiles/concurrentVX.dir/build.make
bin/concurrentVX: /usr/lib/libopencv_gpu.so.2.4.13
bin/concurrentVX: /usr/lib/libvisionworks.so.1.5.3
bin/concurrentVX: /usr/lib/libnvxio.so.1.5.3
bin/concurrentVX: /usr/local/cuda-8.0/lib64/libcufft.so
bin/concurrentVX: /usr/lib/libopencv_legacy.so.2.4.13
bin/concurrentVX: /usr/lib/libopencv_video.so.2.4.13
bin/concurrentVX: /usr/lib/libopencv_calib3d.so.2.4.13
bin/concurrentVX: /usr/lib/libopencv_features2d.so.2.4.13
bin/concurrentVX: /usr/lib/libopencv_flann.so.2.4.13
bin/concurrentVX: /usr/lib/libopencv_ml.so.2.4.13
bin/concurrentVX: /usr/lib/libopencv_objdetect.so.2.4.13
bin/concurrentVX: /usr/lib/libopencv_highgui.so.2.4.13
bin/concurrentVX: /usr/lib/libopencv_photo.so.2.4.13
bin/concurrentVX: /usr/lib/libopencv_imgproc.so.2.4.13
bin/concurrentVX: /usr/lib/libopencv_core.so.2.4.13
bin/concurrentVX: /usr/local/cuda-8.0/lib64/libcudart.so
bin/concurrentVX: /usr/local/cuda-8.0/lib64/libnppc.so
bin/concurrentVX: /usr/local/cuda-8.0/lib64/libnppi.so
bin/concurrentVX: /usr/local/cuda-8.0/lib64/libnpps.so
bin/concurrentVX: CMakeFiles/concurrentVX.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/dev/VXConcurrentTest/concurrentVX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/concurrentVX"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/concurrentVX.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/concurrentVX.dir/build: bin/concurrentVX

.PHONY : CMakeFiles/concurrentVX.dir/build

CMakeFiles/concurrentVX.dir/requires: CMakeFiles/concurrentVX.dir/main.cpp.o.requires

.PHONY : CMakeFiles/concurrentVX.dir/requires

CMakeFiles/concurrentVX.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/concurrentVX.dir/cmake_clean.cmake
.PHONY : CMakeFiles/concurrentVX.dir/clean

CMakeFiles/concurrentVX.dir/depend:
	cd /home/ubuntu/dev/VXConcurrentTest/concurrentVX && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/dev/VXConcurrentTest/src /home/ubuntu/dev/VXConcurrentTest/src /home/ubuntu/dev/VXConcurrentTest/concurrentVX /home/ubuntu/dev/VXConcurrentTest/concurrentVX /home/ubuntu/dev/VXConcurrentTest/concurrentVX/CMakeFiles/concurrentVX.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/concurrentVX.dir/depend


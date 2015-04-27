# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.2.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.2.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/SEXY/documents/backend/imglib/src/opencv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/SEXY/documents/backend/imglib/src/opencv

# Include any dependencies generated for this target.
include CMakeFiles/hist.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hist.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hist.dir/flags.make

CMakeFiles/hist.dir/histogram.cpp.o: CMakeFiles/hist.dir/flags.make
CMakeFiles/hist.dir/histogram.cpp.o: histogram.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/SEXY/documents/backend/imglib/src/opencv/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/hist.dir/histogram.cpp.o"
	/usr/bin/clang++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hist.dir/histogram.cpp.o -c /Users/SEXY/documents/backend/imglib/src/opencv/histogram.cpp

CMakeFiles/hist.dir/histogram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hist.dir/histogram.cpp.i"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/SEXY/documents/backend/imglib/src/opencv/histogram.cpp > CMakeFiles/hist.dir/histogram.cpp.i

CMakeFiles/hist.dir/histogram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hist.dir/histogram.cpp.s"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/SEXY/documents/backend/imglib/src/opencv/histogram.cpp -o CMakeFiles/hist.dir/histogram.cpp.s

CMakeFiles/hist.dir/histogram.cpp.o.requires:
.PHONY : CMakeFiles/hist.dir/histogram.cpp.o.requires

CMakeFiles/hist.dir/histogram.cpp.o.provides: CMakeFiles/hist.dir/histogram.cpp.o.requires
	$(MAKE) -f CMakeFiles/hist.dir/build.make CMakeFiles/hist.dir/histogram.cpp.o.provides.build
.PHONY : CMakeFiles/hist.dir/histogram.cpp.o.provides

CMakeFiles/hist.dir/histogram.cpp.o.provides.build: CMakeFiles/hist.dir/histogram.cpp.o

# Object files for target hist
hist_OBJECTS = \
"CMakeFiles/hist.dir/histogram.cpp.o"

# External object files for target hist
hist_EXTERNAL_OBJECTS =

hist: CMakeFiles/hist.dir/histogram.cpp.o
hist: CMakeFiles/hist.dir/build.make
hist: /usr/local/Cellar/boost/1.57.0/lib/libboost_filesystem.a
hist: /usr/local/lib/libopencv_videostab.3.0.0.dylib
hist: /usr/local/lib/libopencv_ts.a
hist: /usr/local/lib/libopencv_superres.3.0.0.dylib
hist: /usr/local/lib/libopencv_stitching.3.0.0.dylib
hist: /usr/local/lib/libopencv_shape.3.0.0.dylib
hist: /usr/local/lib/libopencv_photo.3.0.0.dylib
hist: /usr/local/lib/libopencv_objdetect.3.0.0.dylib
hist: /usr/local/lib/libopencv_calib3d.3.0.0.dylib
hist: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
hist: /usr/local/lib/libopencv_features2d.3.0.0.dylib
hist: /usr/local/lib/libopencv_ml.3.0.0.dylib
hist: /usr/local/lib/libopencv_highgui.3.0.0.dylib
hist: /usr/local/lib/libopencv_videoio.3.0.0.dylib
hist: /usr/local/lib/libopencv_imgcodecs.3.0.0.dylib
hist: /usr/local/lib/libopencv_flann.3.0.0.dylib
hist: /usr/local/lib/libopencv_video.3.0.0.dylib
hist: /usr/local/lib/libopencv_imgproc.3.0.0.dylib
hist: /usr/local/lib/libopencv_core.3.0.0.dylib
hist: CMakeFiles/hist.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable hist"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hist.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hist.dir/build: hist
.PHONY : CMakeFiles/hist.dir/build

CMakeFiles/hist.dir/requires: CMakeFiles/hist.dir/histogram.cpp.o.requires
.PHONY : CMakeFiles/hist.dir/requires

CMakeFiles/hist.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hist.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hist.dir/clean

CMakeFiles/hist.dir/depend:
	cd /Users/SEXY/documents/backend/imglib/src/opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/SEXY/documents/backend/imglib/src/opencv /Users/SEXY/documents/backend/imglib/src/opencv /Users/SEXY/documents/backend/imglib/src/opencv /Users/SEXY/documents/backend/imglib/src/opencv /Users/SEXY/documents/backend/imglib/src/opencv/CMakeFiles/hist.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hist.dir/depend


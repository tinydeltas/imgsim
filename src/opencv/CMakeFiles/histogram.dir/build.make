# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.0.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.0.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/SEXY/documents/cryptodraw/backend

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/SEXY/documents/cryptodraw/backend

# Include any dependencies generated for this target.
include CMakeFiles/histogram.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/histogram.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/histogram.dir/flags.make

CMakeFiles/histogram.dir/histogram.cpp.o: CMakeFiles/histogram.dir/flags.make
CMakeFiles/histogram.dir/histogram.cpp.o: histogram.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/SEXY/documents/cryptodraw/backend/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/histogram.dir/histogram.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/histogram.dir/histogram.cpp.o -c /Users/SEXY/documents/cryptodraw/backend/histogram.cpp

CMakeFiles/histogram.dir/histogram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/histogram.dir/histogram.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/SEXY/documents/cryptodraw/backend/histogram.cpp > CMakeFiles/histogram.dir/histogram.cpp.i

CMakeFiles/histogram.dir/histogram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/histogram.dir/histogram.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/SEXY/documents/cryptodraw/backend/histogram.cpp -o CMakeFiles/histogram.dir/histogram.cpp.s

CMakeFiles/histogram.dir/histogram.cpp.o.requires:
.PHONY : CMakeFiles/histogram.dir/histogram.cpp.o.requires

CMakeFiles/histogram.dir/histogram.cpp.o.provides: CMakeFiles/histogram.dir/histogram.cpp.o.requires
	$(MAKE) -f CMakeFiles/histogram.dir/build.make CMakeFiles/histogram.dir/histogram.cpp.o.provides.build
.PHONY : CMakeFiles/histogram.dir/histogram.cpp.o.provides

CMakeFiles/histogram.dir/histogram.cpp.o.provides.build: CMakeFiles/histogram.dir/histogram.cpp.o

# Object files for target histogram
histogram_OBJECTS = \
"CMakeFiles/histogram.dir/histogram.cpp.o"

# External object files for target histogram
histogram_EXTERNAL_OBJECTS =

histogram: CMakeFiles/histogram.dir/histogram.cpp.o
histogram: CMakeFiles/histogram.dir/build.make
histogram: /usr/local/lib/libopencv_videostab.3.0.0.dylib
histogram: /usr/local/lib/libopencv_videoio.3.0.0.dylib
histogram: /usr/local/lib/libopencv_video.3.0.0.dylib
histogram: /usr/local/lib/libopencv_ts.a
histogram: /usr/local/lib/libopencv_superres.3.0.0.dylib
histogram: /usr/local/lib/libopencv_stitching.3.0.0.dylib
histogram: /usr/local/lib/libopencv_shape.3.0.0.dylib
histogram: /usr/local/lib/libopencv_photo.3.0.0.dylib
histogram: /usr/local/lib/libopencv_objdetect.3.0.0.dylib
histogram: /usr/local/lib/libopencv_ml.3.0.0.dylib
histogram: /usr/local/lib/libopencv_imgproc.3.0.0.dylib
histogram: /usr/local/lib/libopencv_imgcodecs.3.0.0.dylib
histogram: /usr/local/lib/libopencv_highgui.3.0.0.dylib
histogram: /usr/local/lib/libopencv_flann.3.0.0.dylib
histogram: /usr/local/lib/libopencv_features2d.3.0.0.dylib
histogram: /usr/local/lib/libopencv_core.3.0.0.dylib
histogram: /usr/local/lib/libopencv_calib3d.3.0.0.dylib
histogram: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
histogram: /usr/local/lib/libopencv_features2d.3.0.0.dylib
histogram: /usr/local/lib/libopencv_ml.3.0.0.dylib
histogram: /usr/local/lib/libopencv_highgui.3.0.0.dylib
histogram: /usr/local/lib/libopencv_videoio.3.0.0.dylib
histogram: /usr/local/lib/libopencv_imgcodecs.3.0.0.dylib
histogram: /usr/local/lib/libopencv_flann.3.0.0.dylib
histogram: /usr/local/lib/libopencv_video.3.0.0.dylib
histogram: /usr/local/lib/libopencv_imgproc.3.0.0.dylib
histogram: /usr/local/lib/libopencv_core.3.0.0.dylib
histogram: CMakeFiles/histogram.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable histogram"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/histogram.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/histogram.dir/build: histogram
.PHONY : CMakeFiles/histogram.dir/build

CMakeFiles/histogram.dir/requires: CMakeFiles/histogram.dir/histogram.cpp.o.requires
.PHONY : CMakeFiles/histogram.dir/requires

CMakeFiles/histogram.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/histogram.dir/cmake_clean.cmake
.PHONY : CMakeFiles/histogram.dir/clean

CMakeFiles/histogram.dir/depend:
	cd /Users/SEXY/documents/cryptodraw/backend && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/SEXY/documents/cryptodraw/backend /Users/SEXY/documents/cryptodraw/backend /Users/SEXY/documents/cryptodraw/backend /Users/SEXY/documents/cryptodraw/backend /Users/SEXY/documents/cryptodraw/backend/CMakeFiles/histogram.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/histogram.dir/depend

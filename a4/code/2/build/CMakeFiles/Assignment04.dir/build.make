# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tanishq/Desktop/cg-assignments/a4/code/2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tanishq/Desktop/cg-assignments/a4/code/2/build

# Include any dependencies generated for this target.
include CMakeFiles/Assignment04.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Assignment04.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Assignment04.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Assignment04.dir/flags.make

CMakeFiles/Assignment04.dir/src/main.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/Assignment04.dir/src/main.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Assignment04.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/src/main.cpp.o -MF CMakeFiles/Assignment04.dir/src/main.cpp.o.d -o CMakeFiles/Assignment04.dir/src/main.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/src/main.cpp

CMakeFiles/Assignment04.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/src/main.cpp > CMakeFiles/Assignment04.dir/src/main.cpp.i

CMakeFiles/Assignment04.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/src/main.cpp -o CMakeFiles/Assignment04.dir/src/main.cpp.s

CMakeFiles/Assignment04.dir/src/camera.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/src/camera.cpp.o: ../src/camera.cpp
CMakeFiles/Assignment04.dir/src/camera.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Assignment04.dir/src/camera.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/src/camera.cpp.o -MF CMakeFiles/Assignment04.dir/src/camera.cpp.o.d -o CMakeFiles/Assignment04.dir/src/camera.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/src/camera.cpp

CMakeFiles/Assignment04.dir/src/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/src/camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/src/camera.cpp > CMakeFiles/Assignment04.dir/src/camera.cpp.i

CMakeFiles/Assignment04.dir/src/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/src/camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/src/camera.cpp -o CMakeFiles/Assignment04.dir/src/camera.cpp.s

CMakeFiles/Assignment04.dir/src/color.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/src/color.cpp.o: ../src/color.cpp
CMakeFiles/Assignment04.dir/src/color.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Assignment04.dir/src/color.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/src/color.cpp.o -MF CMakeFiles/Assignment04.dir/src/color.cpp.o.d -o CMakeFiles/Assignment04.dir/src/color.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/src/color.cpp

CMakeFiles/Assignment04.dir/src/color.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/src/color.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/src/color.cpp > CMakeFiles/Assignment04.dir/src/color.cpp.i

CMakeFiles/Assignment04.dir/src/color.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/src/color.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/src/color.cpp -o CMakeFiles/Assignment04.dir/src/color.cpp.s

CMakeFiles/Assignment04.dir/src/imgui_setup.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/src/imgui_setup.cpp.o: ../src/imgui_setup.cpp
CMakeFiles/Assignment04.dir/src/imgui_setup.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Assignment04.dir/src/imgui_setup.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/src/imgui_setup.cpp.o -MF CMakeFiles/Assignment04.dir/src/imgui_setup.cpp.o.d -o CMakeFiles/Assignment04.dir/src/imgui_setup.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/src/imgui_setup.cpp

CMakeFiles/Assignment04.dir/src/imgui_setup.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/src/imgui_setup.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/src/imgui_setup.cpp > CMakeFiles/Assignment04.dir/src/imgui_setup.cpp.i

CMakeFiles/Assignment04.dir/src/imgui_setup.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/src/imgui_setup.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/src/imgui_setup.cpp -o CMakeFiles/Assignment04.dir/src/imgui_setup.cpp.s

CMakeFiles/Assignment04.dir/src/material.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/src/material.cpp.o: ../src/material.cpp
CMakeFiles/Assignment04.dir/src/material.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Assignment04.dir/src/material.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/src/material.cpp.o -MF CMakeFiles/Assignment04.dir/src/material.cpp.o.d -o CMakeFiles/Assignment04.dir/src/material.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/src/material.cpp

CMakeFiles/Assignment04.dir/src/material.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/src/material.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/src/material.cpp > CMakeFiles/Assignment04.dir/src/material.cpp.i

CMakeFiles/Assignment04.dir/src/material.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/src/material.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/src/material.cpp -o CMakeFiles/Assignment04.dir/src/material.cpp.s

CMakeFiles/Assignment04.dir/src/ray.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/src/ray.cpp.o: ../src/ray.cpp
CMakeFiles/Assignment04.dir/src/ray.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Assignment04.dir/src/ray.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/src/ray.cpp.o -MF CMakeFiles/Assignment04.dir/src/ray.cpp.o.d -o CMakeFiles/Assignment04.dir/src/ray.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/src/ray.cpp

CMakeFiles/Assignment04.dir/src/ray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/src/ray.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/src/ray.cpp > CMakeFiles/Assignment04.dir/src/ray.cpp.i

CMakeFiles/Assignment04.dir/src/ray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/src/ray.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/src/ray.cpp -o CMakeFiles/Assignment04.dir/src/ray.cpp.s

CMakeFiles/Assignment04.dir/src/renderengine.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/src/renderengine.cpp.o: ../src/renderengine.cpp
CMakeFiles/Assignment04.dir/src/renderengine.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Assignment04.dir/src/renderengine.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/src/renderengine.cpp.o -MF CMakeFiles/Assignment04.dir/src/renderengine.cpp.o.d -o CMakeFiles/Assignment04.dir/src/renderengine.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/src/renderengine.cpp

CMakeFiles/Assignment04.dir/src/renderengine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/src/renderengine.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/src/renderengine.cpp > CMakeFiles/Assignment04.dir/src/renderengine.cpp.i

CMakeFiles/Assignment04.dir/src/renderengine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/src/renderengine.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/src/renderengine.cpp -o CMakeFiles/Assignment04.dir/src/renderengine.cpp.s

CMakeFiles/Assignment04.dir/src/sphere.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/src/sphere.cpp.o: ../src/sphere.cpp
CMakeFiles/Assignment04.dir/src/sphere.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Assignment04.dir/src/sphere.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/src/sphere.cpp.o -MF CMakeFiles/Assignment04.dir/src/sphere.cpp.o.d -o CMakeFiles/Assignment04.dir/src/sphere.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/src/sphere.cpp

CMakeFiles/Assignment04.dir/src/sphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/src/sphere.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/src/sphere.cpp > CMakeFiles/Assignment04.dir/src/sphere.cpp.i

CMakeFiles/Assignment04.dir/src/sphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/src/sphere.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/src/sphere.cpp -o CMakeFiles/Assignment04.dir/src/sphere.cpp.s

CMakeFiles/Assignment04.dir/src/triangle.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/src/triangle.cpp.o: ../src/triangle.cpp
CMakeFiles/Assignment04.dir/src/triangle.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Assignment04.dir/src/triangle.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/src/triangle.cpp.o -MF CMakeFiles/Assignment04.dir/src/triangle.cpp.o.d -o CMakeFiles/Assignment04.dir/src/triangle.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/src/triangle.cpp

CMakeFiles/Assignment04.dir/src/triangle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/src/triangle.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/src/triangle.cpp > CMakeFiles/Assignment04.dir/src/triangle.cpp.i

CMakeFiles/Assignment04.dir/src/triangle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/src/triangle.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/src/triangle.cpp -o CMakeFiles/Assignment04.dir/src/triangle.cpp.s

CMakeFiles/Assignment04.dir/src/utility.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/src/utility.cpp.o: ../src/utility.cpp
CMakeFiles/Assignment04.dir/src/utility.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Assignment04.dir/src/utility.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/src/utility.cpp.o -MF CMakeFiles/Assignment04.dir/src/utility.cpp.o.d -o CMakeFiles/Assignment04.dir/src/utility.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/src/utility.cpp

CMakeFiles/Assignment04.dir/src/utility.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/src/utility.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/src/utility.cpp > CMakeFiles/Assignment04.dir/src/utility.cpp.i

CMakeFiles/Assignment04.dir/src/utility.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/src/utility.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/src/utility.cpp -o CMakeFiles/Assignment04.dir/src/utility.cpp.s

CMakeFiles/Assignment04.dir/src/vector3D.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/src/vector3D.cpp.o: ../src/vector3D.cpp
CMakeFiles/Assignment04.dir/src/vector3D.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Assignment04.dir/src/vector3D.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/src/vector3D.cpp.o -MF CMakeFiles/Assignment04.dir/src/vector3D.cpp.o.d -o CMakeFiles/Assignment04.dir/src/vector3D.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/src/vector3D.cpp

CMakeFiles/Assignment04.dir/src/vector3D.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/src/vector3D.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/src/vector3D.cpp > CMakeFiles/Assignment04.dir/src/vector3D.cpp.i

CMakeFiles/Assignment04.dir/src/vector3D.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/src/vector3D.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/src/vector3D.cpp -o CMakeFiles/Assignment04.dir/src/vector3D.cpp.s

CMakeFiles/Assignment04.dir/src/world.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/src/world.cpp.o: ../src/world.cpp
CMakeFiles/Assignment04.dir/src/world.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/Assignment04.dir/src/world.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/src/world.cpp.o -MF CMakeFiles/Assignment04.dir/src/world.cpp.o.d -o CMakeFiles/Assignment04.dir/src/world.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/src/world.cpp

CMakeFiles/Assignment04.dir/src/world.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/src/world.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/src/world.cpp > CMakeFiles/Assignment04.dir/src/world.cpp.i

CMakeFiles/Assignment04.dir/src/world.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/src/world.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/src/world.cpp -o CMakeFiles/Assignment04.dir/src/world.cpp.s

CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_glfw.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_glfw.cpp.o: ../depends/imgui/imgui_impl_glfw.cpp
CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_glfw.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_glfw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_glfw.cpp.o -MF CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_glfw.cpp.o.d -o CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_glfw.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui_impl_glfw.cpp

CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_glfw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui_impl_glfw.cpp > CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_glfw.cpp.i

CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_glfw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui_impl_glfw.cpp -o CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_glfw.cpp.s

CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_opengl3.cpp.o: ../depends/imgui/imgui_impl_opengl3.cpp
CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_opengl3.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_opengl3.cpp.o -MF CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_opengl3.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui_impl_opengl3.cpp

CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_opengl3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui_impl_opengl3.cpp > CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_opengl3.cpp.i

CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_opengl3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui_impl_opengl3.cpp -o CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_opengl3.cpp.s

CMakeFiles/Assignment04.dir/depends/imgui/imgui.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/depends/imgui/imgui.cpp.o: ../depends/imgui/imgui.cpp
CMakeFiles/Assignment04.dir/depends/imgui/imgui.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/Assignment04.dir/depends/imgui/imgui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/depends/imgui/imgui.cpp.o -MF CMakeFiles/Assignment04.dir/depends/imgui/imgui.cpp.o.d -o CMakeFiles/Assignment04.dir/depends/imgui/imgui.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui.cpp

CMakeFiles/Assignment04.dir/depends/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/depends/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui.cpp > CMakeFiles/Assignment04.dir/depends/imgui/imgui.cpp.i

CMakeFiles/Assignment04.dir/depends/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/depends/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui.cpp -o CMakeFiles/Assignment04.dir/depends/imgui/imgui.cpp.s

CMakeFiles/Assignment04.dir/depends/imgui/imgui_demo.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/depends/imgui/imgui_demo.cpp.o: ../depends/imgui/imgui_demo.cpp
CMakeFiles/Assignment04.dir/depends/imgui/imgui_demo.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/Assignment04.dir/depends/imgui/imgui_demo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/depends/imgui/imgui_demo.cpp.o -MF CMakeFiles/Assignment04.dir/depends/imgui/imgui_demo.cpp.o.d -o CMakeFiles/Assignment04.dir/depends/imgui/imgui_demo.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui_demo.cpp

CMakeFiles/Assignment04.dir/depends/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/depends/imgui/imgui_demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui_demo.cpp > CMakeFiles/Assignment04.dir/depends/imgui/imgui_demo.cpp.i

CMakeFiles/Assignment04.dir/depends/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/depends/imgui/imgui_demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui_demo.cpp -o CMakeFiles/Assignment04.dir/depends/imgui/imgui_demo.cpp.s

CMakeFiles/Assignment04.dir/depends/imgui/imgui_draw.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/depends/imgui/imgui_draw.cpp.o: ../depends/imgui/imgui_draw.cpp
CMakeFiles/Assignment04.dir/depends/imgui/imgui_draw.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/Assignment04.dir/depends/imgui/imgui_draw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/depends/imgui/imgui_draw.cpp.o -MF CMakeFiles/Assignment04.dir/depends/imgui/imgui_draw.cpp.o.d -o CMakeFiles/Assignment04.dir/depends/imgui/imgui_draw.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui_draw.cpp

CMakeFiles/Assignment04.dir/depends/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/depends/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui_draw.cpp > CMakeFiles/Assignment04.dir/depends/imgui/imgui_draw.cpp.i

CMakeFiles/Assignment04.dir/depends/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/depends/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui_draw.cpp -o CMakeFiles/Assignment04.dir/depends/imgui/imgui_draw.cpp.s

CMakeFiles/Assignment04.dir/depends/imgui/imgui_widgets.cpp.o: CMakeFiles/Assignment04.dir/flags.make
CMakeFiles/Assignment04.dir/depends/imgui/imgui_widgets.cpp.o: ../depends/imgui/imgui_widgets.cpp
CMakeFiles/Assignment04.dir/depends/imgui/imgui_widgets.cpp.o: CMakeFiles/Assignment04.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/Assignment04.dir/depends/imgui/imgui_widgets.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Assignment04.dir/depends/imgui/imgui_widgets.cpp.o -MF CMakeFiles/Assignment04.dir/depends/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/Assignment04.dir/depends/imgui/imgui_widgets.cpp.o -c /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui_widgets.cpp

CMakeFiles/Assignment04.dir/depends/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment04.dir/depends/imgui/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui_widgets.cpp > CMakeFiles/Assignment04.dir/depends/imgui/imgui_widgets.cpp.i

CMakeFiles/Assignment04.dir/depends/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment04.dir/depends/imgui/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanishq/Desktop/cg-assignments/a4/code/2/depends/imgui/imgui_widgets.cpp -o CMakeFiles/Assignment04.dir/depends/imgui/imgui_widgets.cpp.s

# Object files for target Assignment04
Assignment04_OBJECTS = \
"CMakeFiles/Assignment04.dir/src/main.cpp.o" \
"CMakeFiles/Assignment04.dir/src/camera.cpp.o" \
"CMakeFiles/Assignment04.dir/src/color.cpp.o" \
"CMakeFiles/Assignment04.dir/src/imgui_setup.cpp.o" \
"CMakeFiles/Assignment04.dir/src/material.cpp.o" \
"CMakeFiles/Assignment04.dir/src/ray.cpp.o" \
"CMakeFiles/Assignment04.dir/src/renderengine.cpp.o" \
"CMakeFiles/Assignment04.dir/src/sphere.cpp.o" \
"CMakeFiles/Assignment04.dir/src/triangle.cpp.o" \
"CMakeFiles/Assignment04.dir/src/utility.cpp.o" \
"CMakeFiles/Assignment04.dir/src/vector3D.cpp.o" \
"CMakeFiles/Assignment04.dir/src/world.cpp.o" \
"CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_glfw.cpp.o" \
"CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_opengl3.cpp.o" \
"CMakeFiles/Assignment04.dir/depends/imgui/imgui.cpp.o" \
"CMakeFiles/Assignment04.dir/depends/imgui/imgui_demo.cpp.o" \
"CMakeFiles/Assignment04.dir/depends/imgui/imgui_draw.cpp.o" \
"CMakeFiles/Assignment04.dir/depends/imgui/imgui_widgets.cpp.o"

# External object files for target Assignment04
Assignment04_EXTERNAL_OBJECTS =

../Assignment04: CMakeFiles/Assignment04.dir/src/main.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/src/camera.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/src/color.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/src/imgui_setup.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/src/material.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/src/ray.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/src/renderengine.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/src/sphere.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/src/triangle.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/src/utility.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/src/vector3D.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/src/world.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_glfw.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/depends/imgui/imgui_impl_opengl3.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/depends/imgui/imgui.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/depends/imgui/imgui_demo.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/depends/imgui/imgui_draw.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/depends/imgui/imgui_widgets.cpp.o
../Assignment04: CMakeFiles/Assignment04.dir/build.make
../Assignment04: /usr/lib/x86_64-linux-gnu/libGL.so
../Assignment04: /usr/lib/x86_64-linux-gnu/libGLU.so
../Assignment04: /usr/lib/x86_64-linux-gnu/libglfw.so.3.3
../Assignment04: /usr/lib/x86_64-linux-gnu/libGLEW.so
../Assignment04: CMakeFiles/Assignment04.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Linking CXX executable ../Assignment04"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Assignment04.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Assignment04.dir/build: ../Assignment04
.PHONY : CMakeFiles/Assignment04.dir/build

CMakeFiles/Assignment04.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Assignment04.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Assignment04.dir/clean

CMakeFiles/Assignment04.dir/depend:
	cd /home/tanishq/Desktop/cg-assignments/a4/code/2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tanishq/Desktop/cg-assignments/a4/code/2 /home/tanishq/Desktop/cg-assignments/a4/code/2 /home/tanishq/Desktop/cg-assignments/a4/code/2/build /home/tanishq/Desktop/cg-assignments/a4/code/2/build /home/tanishq/Desktop/cg-assignments/a4/code/2/build/CMakeFiles/Assignment04.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Assignment04.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.12

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.2.4\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\User\CLionProjects\assignment_C

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\User\CLionProjects\assignment_C\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/assignment_C.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/assignment_C.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/assignment_C.dir/flags.make

CMakeFiles/assignment_C.dir/main.c.obj: CMakeFiles/assignment_C.dir/flags.make
CMakeFiles/assignment_C.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\User\CLionProjects\assignment_C\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/assignment_C.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\assignment_C.dir\main.c.obj   -c C:\Users\User\CLionProjects\assignment_C\main.c

CMakeFiles/assignment_C.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/assignment_C.dir/main.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\User\CLionProjects\assignment_C\main.c > CMakeFiles\assignment_C.dir\main.c.i

CMakeFiles/assignment_C.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/assignment_C.dir/main.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\User\CLionProjects\assignment_C\main.c -o CMakeFiles\assignment_C.dir\main.c.s

# Object files for target assignment_C
assignment_C_OBJECTS = \
"CMakeFiles/assignment_C.dir/main.c.obj"

# External object files for target assignment_C
assignment_C_EXTERNAL_OBJECTS =

assignment_C.exe: CMakeFiles/assignment_C.dir/main.c.obj
assignment_C.exe: CMakeFiles/assignment_C.dir/build.make
assignment_C.exe: CMakeFiles/assignment_C.dir/linklibs.rsp
assignment_C.exe: CMakeFiles/assignment_C.dir/objects1.rsp
assignment_C.exe: CMakeFiles/assignment_C.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\User\CLionProjects\assignment_C\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable assignment_C.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\assignment_C.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/assignment_C.dir/build: assignment_C.exe

.PHONY : CMakeFiles/assignment_C.dir/build

CMakeFiles/assignment_C.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\assignment_C.dir\cmake_clean.cmake
.PHONY : CMakeFiles/assignment_C.dir/clean

CMakeFiles/assignment_C.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\User\CLionProjects\assignment_C C:\Users\User\CLionProjects\assignment_C C:\Users\User\CLionProjects\assignment_C\cmake-build-debug C:\Users\User\CLionProjects\assignment_C\cmake-build-debug C:\Users\User\CLionProjects\assignment_C\cmake-build-debug\CMakeFiles\assignment_C.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/assignment_C.dir/depend

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
CMAKE_SOURCE_DIR = /home/kelvin/dev/logger

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kelvin/dev/logger/build

# Include any dependencies generated for this target.
include src/klogger/CMakeFiles/klogger.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/klogger/CMakeFiles/klogger.dir/compiler_depend.make

# Include the progress variables for this target.
include src/klogger/CMakeFiles/klogger.dir/progress.make

# Include the compile flags for this target's objects.
include src/klogger/CMakeFiles/klogger.dir/flags.make

# Object files for target klogger
klogger_OBJECTS =

# External object files for target klogger
klogger_EXTERNAL_OBJECTS =

src/klogger/libklogger.a: src/klogger/CMakeFiles/klogger.dir/build.make
src/klogger/libklogger.a: src/klogger/CMakeFiles/klogger.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kelvin/dev/logger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX static library libklogger.a"
	cd /home/kelvin/dev/logger/build/src/klogger && $(CMAKE_COMMAND) -P CMakeFiles/klogger.dir/cmake_clean_target.cmake
	cd /home/kelvin/dev/logger/build/src/klogger && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/klogger.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/klogger/CMakeFiles/klogger.dir/build: src/klogger/libklogger.a
.PHONY : src/klogger/CMakeFiles/klogger.dir/build

src/klogger/CMakeFiles/klogger.dir/clean:
	cd /home/kelvin/dev/logger/build/src/klogger && $(CMAKE_COMMAND) -P CMakeFiles/klogger.dir/cmake_clean.cmake
.PHONY : src/klogger/CMakeFiles/klogger.dir/clean

src/klogger/CMakeFiles/klogger.dir/depend:
	cd /home/kelvin/dev/logger/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kelvin/dev/logger /home/kelvin/dev/logger/src/klogger /home/kelvin/dev/logger/build /home/kelvin/dev/logger/build/src/klogger /home/kelvin/dev/logger/build/src/klogger/CMakeFiles/klogger.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/klogger/CMakeFiles/klogger.dir/depend


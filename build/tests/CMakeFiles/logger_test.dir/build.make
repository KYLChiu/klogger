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
include tests/CMakeFiles/logger_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/logger_test.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/logger_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/logger_test.dir/flags.make

tests/CMakeFiles/logger_test.dir/logger_test.cpp.o: tests/CMakeFiles/logger_test.dir/flags.make
tests/CMakeFiles/logger_test.dir/logger_test.cpp.o: ../tests/logger_test.cpp
tests/CMakeFiles/logger_test.dir/logger_test.cpp.o: tests/CMakeFiles/logger_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kelvin/dev/logger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/logger_test.dir/logger_test.cpp.o"
	cd /home/kelvin/dev/logger/build/tests && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/logger_test.dir/logger_test.cpp.o -MF CMakeFiles/logger_test.dir/logger_test.cpp.o.d -o CMakeFiles/logger_test.dir/logger_test.cpp.o -c /home/kelvin/dev/logger/tests/logger_test.cpp

tests/CMakeFiles/logger_test.dir/logger_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/logger_test.dir/logger_test.cpp.i"
	cd /home/kelvin/dev/logger/build/tests && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kelvin/dev/logger/tests/logger_test.cpp > CMakeFiles/logger_test.dir/logger_test.cpp.i

tests/CMakeFiles/logger_test.dir/logger_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/logger_test.dir/logger_test.cpp.s"
	cd /home/kelvin/dev/logger/build/tests && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kelvin/dev/logger/tests/logger_test.cpp -o CMakeFiles/logger_test.dir/logger_test.cpp.s

# Object files for target logger_test
logger_test_OBJECTS = \
"CMakeFiles/logger_test.dir/logger_test.cpp.o"

# External object files for target logger_test
logger_test_EXTERNAL_OBJECTS =

tests/logger_test: tests/CMakeFiles/logger_test.dir/logger_test.cpp.o
tests/logger_test: tests/CMakeFiles/logger_test.dir/build.make
tests/logger_test: src/klogger/libklogger.a
tests/logger_test: lib/libgtest_main.a
tests/logger_test: lib/libgtest.a
tests/logger_test: tests/CMakeFiles/logger_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kelvin/dev/logger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable logger_test"
	cd /home/kelvin/dev/logger/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/logger_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/logger_test.dir/build: tests/logger_test
.PHONY : tests/CMakeFiles/logger_test.dir/build

tests/CMakeFiles/logger_test.dir/clean:
	cd /home/kelvin/dev/logger/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/logger_test.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/logger_test.dir/clean

tests/CMakeFiles/logger_test.dir/depend:
	cd /home/kelvin/dev/logger/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kelvin/dev/logger /home/kelvin/dev/logger/tests /home/kelvin/dev/logger/build /home/kelvin/dev/logger/build/tests /home/kelvin/dev/logger/build/tests/CMakeFiles/logger_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/logger_test.dir/depend

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
CMAKE_SOURCE_DIR = /paralution/paralution-1.1.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /paralution/paralution-1.1.0/build

# Include any dependencies generated for this target.
include src/examples/CMakeFiles/cmk.dir/depend.make

# Include the progress variables for this target.
include src/examples/CMakeFiles/cmk.dir/progress.make

# Include the compile flags for this target's objects.
include src/examples/CMakeFiles/cmk.dir/flags.make

src/examples/CMakeFiles/cmk.dir/cmk.cpp.o: src/examples/CMakeFiles/cmk.dir/flags.make
src/examples/CMakeFiles/cmk.dir/cmk.cpp.o: ../src/examples/cmk.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/paralution/paralution-1.1.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/examples/CMakeFiles/cmk.dir/cmk.cpp.o"
	cd /paralution/paralution-1.1.0/build/src/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cmk.dir/cmk.cpp.o -c /paralution/paralution-1.1.0/src/examples/cmk.cpp

src/examples/CMakeFiles/cmk.dir/cmk.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmk.dir/cmk.cpp.i"
	cd /paralution/paralution-1.1.0/build/src/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /paralution/paralution-1.1.0/src/examples/cmk.cpp > CMakeFiles/cmk.dir/cmk.cpp.i

src/examples/CMakeFiles/cmk.dir/cmk.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmk.dir/cmk.cpp.s"
	cd /paralution/paralution-1.1.0/build/src/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /paralution/paralution-1.1.0/src/examples/cmk.cpp -o CMakeFiles/cmk.dir/cmk.cpp.s

src/examples/CMakeFiles/cmk.dir/cmk.cpp.o.requires:

.PHONY : src/examples/CMakeFiles/cmk.dir/cmk.cpp.o.requires

src/examples/CMakeFiles/cmk.dir/cmk.cpp.o.provides: src/examples/CMakeFiles/cmk.dir/cmk.cpp.o.requires
	$(MAKE) -f src/examples/CMakeFiles/cmk.dir/build.make src/examples/CMakeFiles/cmk.dir/cmk.cpp.o.provides.build
.PHONY : src/examples/CMakeFiles/cmk.dir/cmk.cpp.o.provides

src/examples/CMakeFiles/cmk.dir/cmk.cpp.o.provides.build: src/examples/CMakeFiles/cmk.dir/cmk.cpp.o


# Object files for target cmk
cmk_OBJECTS = \
"CMakeFiles/cmk.dir/cmk.cpp.o"

# External object files for target cmk
cmk_EXTERNAL_OBJECTS =

bin/cmk: src/examples/CMakeFiles/cmk.dir/cmk.cpp.o
bin/cmk: src/examples/CMakeFiles/cmk.dir/build.make
bin/cmk: lib/libparalution.so
bin/cmk: src/examples/CMakeFiles/cmk.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/paralution/paralution-1.1.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/cmk"
	cd /paralution/paralution-1.1.0/build/src/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cmk.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/examples/CMakeFiles/cmk.dir/build: bin/cmk

.PHONY : src/examples/CMakeFiles/cmk.dir/build

src/examples/CMakeFiles/cmk.dir/requires: src/examples/CMakeFiles/cmk.dir/cmk.cpp.o.requires

.PHONY : src/examples/CMakeFiles/cmk.dir/requires

src/examples/CMakeFiles/cmk.dir/clean:
	cd /paralution/paralution-1.1.0/build/src/examples && $(CMAKE_COMMAND) -P CMakeFiles/cmk.dir/cmake_clean.cmake
.PHONY : src/examples/CMakeFiles/cmk.dir/clean

src/examples/CMakeFiles/cmk.dir/depend:
	cd /paralution/paralution-1.1.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /paralution/paralution-1.1.0 /paralution/paralution-1.1.0/src/examples /paralution/paralution-1.1.0/build /paralution/paralution-1.1.0/build/src/examples /paralution/paralution-1.1.0/build/src/examples/CMakeFiles/cmk.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/examples/CMakeFiles/cmk.dir/depend


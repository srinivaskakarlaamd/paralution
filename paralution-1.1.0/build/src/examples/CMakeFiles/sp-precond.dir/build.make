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
include src/examples/CMakeFiles/sp-precond.dir/depend.make

# Include the progress variables for this target.
include src/examples/CMakeFiles/sp-precond.dir/progress.make

# Include the compile flags for this target's objects.
include src/examples/CMakeFiles/sp-precond.dir/flags.make

src/examples/CMakeFiles/sp-precond.dir/sp-precond.cpp.o: src/examples/CMakeFiles/sp-precond.dir/flags.make
src/examples/CMakeFiles/sp-precond.dir/sp-precond.cpp.o: ../src/examples/sp-precond.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/paralution/paralution-1.1.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/examples/CMakeFiles/sp-precond.dir/sp-precond.cpp.o"
	cd /paralution/paralution-1.1.0/build/src/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sp-precond.dir/sp-precond.cpp.o -c /paralution/paralution-1.1.0/src/examples/sp-precond.cpp

src/examples/CMakeFiles/sp-precond.dir/sp-precond.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sp-precond.dir/sp-precond.cpp.i"
	cd /paralution/paralution-1.1.0/build/src/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /paralution/paralution-1.1.0/src/examples/sp-precond.cpp > CMakeFiles/sp-precond.dir/sp-precond.cpp.i

src/examples/CMakeFiles/sp-precond.dir/sp-precond.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sp-precond.dir/sp-precond.cpp.s"
	cd /paralution/paralution-1.1.0/build/src/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /paralution/paralution-1.1.0/src/examples/sp-precond.cpp -o CMakeFiles/sp-precond.dir/sp-precond.cpp.s

src/examples/CMakeFiles/sp-precond.dir/sp-precond.cpp.o.requires:

.PHONY : src/examples/CMakeFiles/sp-precond.dir/sp-precond.cpp.o.requires

src/examples/CMakeFiles/sp-precond.dir/sp-precond.cpp.o.provides: src/examples/CMakeFiles/sp-precond.dir/sp-precond.cpp.o.requires
	$(MAKE) -f src/examples/CMakeFiles/sp-precond.dir/build.make src/examples/CMakeFiles/sp-precond.dir/sp-precond.cpp.o.provides.build
.PHONY : src/examples/CMakeFiles/sp-precond.dir/sp-precond.cpp.o.provides

src/examples/CMakeFiles/sp-precond.dir/sp-precond.cpp.o.provides.build: src/examples/CMakeFiles/sp-precond.dir/sp-precond.cpp.o


# Object files for target sp-precond
sp__precond_OBJECTS = \
"CMakeFiles/sp-precond.dir/sp-precond.cpp.o"

# External object files for target sp-precond
sp__precond_EXTERNAL_OBJECTS =

bin/sp-precond: src/examples/CMakeFiles/sp-precond.dir/sp-precond.cpp.o
bin/sp-precond: src/examples/CMakeFiles/sp-precond.dir/build.make
bin/sp-precond: lib/libparalution.so
bin/sp-precond: src/examples/CMakeFiles/sp-precond.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/paralution/paralution-1.1.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/sp-precond"
	cd /paralution/paralution-1.1.0/build/src/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sp-precond.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/examples/CMakeFiles/sp-precond.dir/build: bin/sp-precond

.PHONY : src/examples/CMakeFiles/sp-precond.dir/build

src/examples/CMakeFiles/sp-precond.dir/requires: src/examples/CMakeFiles/sp-precond.dir/sp-precond.cpp.o.requires

.PHONY : src/examples/CMakeFiles/sp-precond.dir/requires

src/examples/CMakeFiles/sp-precond.dir/clean:
	cd /paralution/paralution-1.1.0/build/src/examples && $(CMAKE_COMMAND) -P CMakeFiles/sp-precond.dir/cmake_clean.cmake
.PHONY : src/examples/CMakeFiles/sp-precond.dir/clean

src/examples/CMakeFiles/sp-precond.dir/depend:
	cd /paralution/paralution-1.1.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /paralution/paralution-1.1.0 /paralution/paralution-1.1.0/src/examples /paralution/paralution-1.1.0/build /paralution/paralution-1.1.0/build/src/examples /paralution/paralution-1.1.0/build/src/examples/CMakeFiles/sp-precond.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/examples/CMakeFiles/sp-precond.dir/depend


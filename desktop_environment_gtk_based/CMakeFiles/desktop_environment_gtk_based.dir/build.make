# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /usr/pkg/bin/cmake

# The command to remove a file.
RM = /usr/pkg/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/camilo/cmake/integration

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/camilo/cmake/integration

# Include any dependencies generated for this target.
include operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/compiler_depend.make

# Include the progress variables for this target.
include operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/progress.make

# Include the compile flags for this target's objects.
include operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/flags.make

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.gch: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/flags.make
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.gch: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.cxx
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.gch: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.gch: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.gch"
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -x c++-header -include /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx -MD -MT operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.gch -MF CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.gch.d -o CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.gch -c /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.cxx

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.i"
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -x c++-header -include /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx -E /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.cxx > CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.i

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.s"
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -x c++-header -include /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx -S /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.cxx -o CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.s

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/flags.make
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/_.cpp
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.gch
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.o"
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx -MD -MT operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.o -MF CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.o.d -o CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.o -c /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/_.cpp

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.i"
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx -E /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/_.cpp > CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.i

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.s"
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx -S /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/_.cpp -o CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.s

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/flags.make
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/_factory.cpp
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.gch
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.o"
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx -MD -MT operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.o -MF CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.o.d -o CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.o -c /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/_factory.cpp

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.i"
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx -E /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/_factory.cpp > CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.i

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.s"
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx -S /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/_factory.cpp -o CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.s

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/flags.make
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/framework.cpp
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.gch
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.o"
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx -MD -MT operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.o -MF CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.o.d -o CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.o -c /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/framework.cpp

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.i"
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx -E /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/framework.cpp > CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.i

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.s"
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx -S /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/framework.cpp -o CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.s

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/flags.make
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/node.cpp
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.gch
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.o: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.o"
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx -MD -MT operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.o -MF CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.o.d -o CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.o -c /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/node.cpp

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.i"
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx -E /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/node.cpp > CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.i

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.s"
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx -S /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/node.cpp -o CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.s

# Object files for target desktop_environment_gtk_based
desktop_environment_gtk_based_OBJECTS = \
"CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.o" \
"CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.o" \
"CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.o" \
"CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.o"

# External object files for target desktop_environment_gtk_based
desktop_environment_gtk_based_EXTERNAL_OBJECTS =

output/libdesktop_environment_gtk_based.so: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/cmake_pch.hxx.gch
output/libdesktop_environment_gtk_based.so: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_.cpp.o
output/libdesktop_environment_gtk_based.so: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/_factory.cpp.o
output/libdesktop_environment_gtk_based.so: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/framework.cpp.o
output/libdesktop_environment_gtk_based.so: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/node.cpp.o
output/libdesktop_environment_gtk_based.so: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/build.make
output/libdesktop_environment_gtk_based.so: output/libnode_gtk_based.so
output/libdesktop_environment_gtk_based.so: output/libnode_gtk3.so
output/libdesktop_environment_gtk_based.so: output/libnode_gdk.so
output/libdesktop_environment_gtk_based.so: output/libwindowing_x11.so
output/libdesktop_environment_gtk_based.so: output/libaura_netbsd.so
output/libdesktop_environment_gtk_based.so: output/libapex_netbsd.so
output/libdesktop_environment_gtk_based.so: output/libacme_netbsd.so
output/libdesktop_environment_gtk_based.so: output/libaura_posix.so
output/libdesktop_environment_gtk_based.so: output/libapex_posix.so
output/libdesktop_environment_gtk_based.so: output/libacme_posix.so
output/libdesktop_environment_gtk_based.so: output/libaura.so
output/libdesktop_environment_gtk_based.so: output/libapex.so
output/libdesktop_environment_gtk_based.so: output/libacme.so
output/libdesktop_environment_gtk_based.so: output/libaqua.so
output/libdesktop_environment_gtk_based.so: operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX shared library ../../../output/libdesktop_environment_gtk_based.so"
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/desktop_environment_gtk_based.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/build: output/libdesktop_environment_gtk_based.so
.PHONY : operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/build

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/clean:
	cd /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based && $(CMAKE_COMMAND) -P CMakeFiles/desktop_environment_gtk_based.dir/cmake_clean.cmake
.PHONY : operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/clean

operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/depend:
	cd /home/camilo/cmake/integration && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/camilo/cmake/integration /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based /home/camilo/cmake/integration /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based /home/camilo/cmake/integration/operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : operating_system/operating_system-netbsd/desktop_environment_gtk_based/CMakeFiles/desktop_environment_gtk_based.dir/depend

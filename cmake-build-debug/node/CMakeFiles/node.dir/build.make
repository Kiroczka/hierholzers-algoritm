# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.1.1\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.1.1\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Kira\CLionProjects\hierholzers-algoritm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug

# Include any dependencies generated for this target.
include node\CMakeFiles\Node.dir\depend.make

# Include the progress variables for this target.
include node\CMakeFiles\Node.dir\progress.make

# Include the compile flags for this target's objects.
include node\CMakeFiles\Node.dir\flags.make

node\CMakeFiles\Node.dir\Node.cpp.obj: node\CMakeFiles\Node.dir\flags.make
node\CMakeFiles\Node.dir\Node.cpp.obj: ..\node\Node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object node/CMakeFiles/Node.dir/Node.cpp.obj"
	cd C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug\node
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1413~1.261\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Node.dir\Node.cpp.obj /FdCMakeFiles\Node.dir\Node.pdb /FS -c C:\Users\Kira\CLionProjects\hierholzers-algoritm\node\Node.cpp
<<
	cd C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug

node\CMakeFiles\Node.dir\Node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Node.dir/Node.cpp.i"
	cd C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug\node
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1413~1.261\bin\Hostx64\x64\cl.exe > CMakeFiles\Node.dir\Node.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Kira\CLionProjects\hierholzers-algoritm\node\Node.cpp
<<
	cd C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug

node\CMakeFiles\Node.dir\Node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Node.dir/Node.cpp.s"
	cd C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug\node
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1413~1.261\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Node.dir\Node.cpp.s /c C:\Users\Kira\CLionProjects\hierholzers-algoritm\node\Node.cpp
<<
	cd C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug

node\CMakeFiles\Node.dir\Node.cpp.obj.requires:

.PHONY : node\CMakeFiles\Node.dir\Node.cpp.obj.requires

node\CMakeFiles\Node.dir\Node.cpp.obj.provides: node\CMakeFiles\Node.dir\Node.cpp.obj.requires
	$(MAKE) -f node\CMakeFiles\Node.dir\build.make /nologo -$(MAKEFLAGS) node\CMakeFiles\Node.dir\Node.cpp.obj.provides.build
.PHONY : node\CMakeFiles\Node.dir\Node.cpp.obj.provides

node\CMakeFiles\Node.dir\Node.cpp.obj.provides.build: node\CMakeFiles\Node.dir\Node.cpp.obj


# Object files for target Node
Node_OBJECTS = \
"CMakeFiles\Node.dir\Node.cpp.obj"

# External object files for target Node
Node_EXTERNAL_OBJECTS =

node\Node.lib: node\CMakeFiles\Node.dir\Node.cpp.obj
node\Node.lib: node\CMakeFiles\Node.dir\build.make
node\Node.lib: node\CMakeFiles\Node.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library Node.lib"
	cd C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug\node
	$(CMAKE_COMMAND) -P CMakeFiles\Node.dir\cmake_clean_target.cmake
	cd C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug
	cd C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug\node
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1413~1.261\bin\Hostx64\x64\link.exe /lib /nologo /machine:x64 /out:Node.lib @CMakeFiles\Node.dir\objects1.rsp 
	cd C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug

# Rule to build all files generated by this target.
node\CMakeFiles\Node.dir\build: node\Node.lib

.PHONY : node\CMakeFiles\Node.dir\build

node\CMakeFiles\Node.dir\requires: node\CMakeFiles\Node.dir\Node.cpp.obj.requires

.PHONY : node\CMakeFiles\Node.dir\requires

node\CMakeFiles\Node.dir\clean:
	cd C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug\node
	$(CMAKE_COMMAND) -P CMakeFiles\Node.dir\cmake_clean.cmake
	cd C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug
.PHONY : node\CMakeFiles\Node.dir\clean

node\CMakeFiles\Node.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\Kira\CLionProjects\hierholzers-algoritm C:\Users\Kira\CLionProjects\hierholzers-algoritm\node C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug\node C:\Users\Kira\CLionProjects\hierholzers-algoritm\cmake-build-debug\node\CMakeFiles\node.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : node\CMakeFiles\Node.dir\depend


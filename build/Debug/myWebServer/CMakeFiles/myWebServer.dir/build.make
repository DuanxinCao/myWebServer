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
CMAKE_SOURCE_DIR = /home/web/myWebServer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/web/myWebServer/build/Debug

# Include any dependencies generated for this target.
include myWebServer/CMakeFiles/myWebServer.dir/depend.make

# Include the progress variables for this target.
include myWebServer/CMakeFiles/myWebServer.dir/progress.make

# Include the compile flags for this target's objects.
include myWebServer/CMakeFiles/myWebServer.dir/flags.make

myWebServer/CMakeFiles/myWebServer.dir/Channel.cpp.o: myWebServer/CMakeFiles/myWebServer.dir/flags.make
myWebServer/CMakeFiles/myWebServer.dir/Channel.cpp.o: ../../myWebServer/Channel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/web/myWebServer/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object myWebServer/CMakeFiles/myWebServer.dir/Channel.cpp.o"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/myWebServer.dir/Channel.cpp.o -c /home/web/myWebServer/myWebServer/Channel.cpp

myWebServer/CMakeFiles/myWebServer.dir/Channel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myWebServer.dir/Channel.cpp.i"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/web/myWebServer/myWebServer/Channel.cpp > CMakeFiles/myWebServer.dir/Channel.cpp.i

myWebServer/CMakeFiles/myWebServer.dir/Channel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myWebServer.dir/Channel.cpp.s"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/web/myWebServer/myWebServer/Channel.cpp -o CMakeFiles/myWebServer.dir/Channel.cpp.s

myWebServer/CMakeFiles/myWebServer.dir/Channel.cpp.o.requires:

.PHONY : myWebServer/CMakeFiles/myWebServer.dir/Channel.cpp.o.requires

myWebServer/CMakeFiles/myWebServer.dir/Channel.cpp.o.provides: myWebServer/CMakeFiles/myWebServer.dir/Channel.cpp.o.requires
	$(MAKE) -f myWebServer/CMakeFiles/myWebServer.dir/build.make myWebServer/CMakeFiles/myWebServer.dir/Channel.cpp.o.provides.build
.PHONY : myWebServer/CMakeFiles/myWebServer.dir/Channel.cpp.o.provides

myWebServer/CMakeFiles/myWebServer.dir/Channel.cpp.o.provides.build: myWebServer/CMakeFiles/myWebServer.dir/Channel.cpp.o


myWebServer/CMakeFiles/myWebServer.dir/Epoll.cpp.o: myWebServer/CMakeFiles/myWebServer.dir/flags.make
myWebServer/CMakeFiles/myWebServer.dir/Epoll.cpp.o: ../../myWebServer/Epoll.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/web/myWebServer/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object myWebServer/CMakeFiles/myWebServer.dir/Epoll.cpp.o"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/myWebServer.dir/Epoll.cpp.o -c /home/web/myWebServer/myWebServer/Epoll.cpp

myWebServer/CMakeFiles/myWebServer.dir/Epoll.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myWebServer.dir/Epoll.cpp.i"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/web/myWebServer/myWebServer/Epoll.cpp > CMakeFiles/myWebServer.dir/Epoll.cpp.i

myWebServer/CMakeFiles/myWebServer.dir/Epoll.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myWebServer.dir/Epoll.cpp.s"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/web/myWebServer/myWebServer/Epoll.cpp -o CMakeFiles/myWebServer.dir/Epoll.cpp.s

myWebServer/CMakeFiles/myWebServer.dir/Epoll.cpp.o.requires:

.PHONY : myWebServer/CMakeFiles/myWebServer.dir/Epoll.cpp.o.requires

myWebServer/CMakeFiles/myWebServer.dir/Epoll.cpp.o.provides: myWebServer/CMakeFiles/myWebServer.dir/Epoll.cpp.o.requires
	$(MAKE) -f myWebServer/CMakeFiles/myWebServer.dir/build.make myWebServer/CMakeFiles/myWebServer.dir/Epoll.cpp.o.provides.build
.PHONY : myWebServer/CMakeFiles/myWebServer.dir/Epoll.cpp.o.provides

myWebServer/CMakeFiles/myWebServer.dir/Epoll.cpp.o.provides.build: myWebServer/CMakeFiles/myWebServer.dir/Epoll.cpp.o


myWebServer/CMakeFiles/myWebServer.dir/Eventfd.cpp.o: myWebServer/CMakeFiles/myWebServer.dir/flags.make
myWebServer/CMakeFiles/myWebServer.dir/Eventfd.cpp.o: ../../myWebServer/Eventfd.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/web/myWebServer/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object myWebServer/CMakeFiles/myWebServer.dir/Eventfd.cpp.o"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/myWebServer.dir/Eventfd.cpp.o -c /home/web/myWebServer/myWebServer/Eventfd.cpp

myWebServer/CMakeFiles/myWebServer.dir/Eventfd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myWebServer.dir/Eventfd.cpp.i"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/web/myWebServer/myWebServer/Eventfd.cpp > CMakeFiles/myWebServer.dir/Eventfd.cpp.i

myWebServer/CMakeFiles/myWebServer.dir/Eventfd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myWebServer.dir/Eventfd.cpp.s"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/web/myWebServer/myWebServer/Eventfd.cpp -o CMakeFiles/myWebServer.dir/Eventfd.cpp.s

myWebServer/CMakeFiles/myWebServer.dir/Eventfd.cpp.o.requires:

.PHONY : myWebServer/CMakeFiles/myWebServer.dir/Eventfd.cpp.o.requires

myWebServer/CMakeFiles/myWebServer.dir/Eventfd.cpp.o.provides: myWebServer/CMakeFiles/myWebServer.dir/Eventfd.cpp.o.requires
	$(MAKE) -f myWebServer/CMakeFiles/myWebServer.dir/build.make myWebServer/CMakeFiles/myWebServer.dir/Eventfd.cpp.o.provides.build
.PHONY : myWebServer/CMakeFiles/myWebServer.dir/Eventfd.cpp.o.provides

myWebServer/CMakeFiles/myWebServer.dir/Eventfd.cpp.o.provides.build: myWebServer/CMakeFiles/myWebServer.dir/Eventfd.cpp.o


myWebServer/CMakeFiles/myWebServer.dir/EventLoop.cpp.o: myWebServer/CMakeFiles/myWebServer.dir/flags.make
myWebServer/CMakeFiles/myWebServer.dir/EventLoop.cpp.o: ../../myWebServer/EventLoop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/web/myWebServer/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object myWebServer/CMakeFiles/myWebServer.dir/EventLoop.cpp.o"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/myWebServer.dir/EventLoop.cpp.o -c /home/web/myWebServer/myWebServer/EventLoop.cpp

myWebServer/CMakeFiles/myWebServer.dir/EventLoop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myWebServer.dir/EventLoop.cpp.i"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/web/myWebServer/myWebServer/EventLoop.cpp > CMakeFiles/myWebServer.dir/EventLoop.cpp.i

myWebServer/CMakeFiles/myWebServer.dir/EventLoop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myWebServer.dir/EventLoop.cpp.s"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/web/myWebServer/myWebServer/EventLoop.cpp -o CMakeFiles/myWebServer.dir/EventLoop.cpp.s

myWebServer/CMakeFiles/myWebServer.dir/EventLoop.cpp.o.requires:

.PHONY : myWebServer/CMakeFiles/myWebServer.dir/EventLoop.cpp.o.requires

myWebServer/CMakeFiles/myWebServer.dir/EventLoop.cpp.o.provides: myWebServer/CMakeFiles/myWebServer.dir/EventLoop.cpp.o.requires
	$(MAKE) -f myWebServer/CMakeFiles/myWebServer.dir/build.make myWebServer/CMakeFiles/myWebServer.dir/EventLoop.cpp.o.provides.build
.PHONY : myWebServer/CMakeFiles/myWebServer.dir/EventLoop.cpp.o.provides

myWebServer/CMakeFiles/myWebServer.dir/EventLoop.cpp.o.provides.build: myWebServer/CMakeFiles/myWebServer.dir/EventLoop.cpp.o


myWebServer/CMakeFiles/myWebServer.dir/HttpData.cpp.o: myWebServer/CMakeFiles/myWebServer.dir/flags.make
myWebServer/CMakeFiles/myWebServer.dir/HttpData.cpp.o: ../../myWebServer/HttpData.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/web/myWebServer/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object myWebServer/CMakeFiles/myWebServer.dir/HttpData.cpp.o"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/myWebServer.dir/HttpData.cpp.o -c /home/web/myWebServer/myWebServer/HttpData.cpp

myWebServer/CMakeFiles/myWebServer.dir/HttpData.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myWebServer.dir/HttpData.cpp.i"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/web/myWebServer/myWebServer/HttpData.cpp > CMakeFiles/myWebServer.dir/HttpData.cpp.i

myWebServer/CMakeFiles/myWebServer.dir/HttpData.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myWebServer.dir/HttpData.cpp.s"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/web/myWebServer/myWebServer/HttpData.cpp -o CMakeFiles/myWebServer.dir/HttpData.cpp.s

myWebServer/CMakeFiles/myWebServer.dir/HttpData.cpp.o.requires:

.PHONY : myWebServer/CMakeFiles/myWebServer.dir/HttpData.cpp.o.requires

myWebServer/CMakeFiles/myWebServer.dir/HttpData.cpp.o.provides: myWebServer/CMakeFiles/myWebServer.dir/HttpData.cpp.o.requires
	$(MAKE) -f myWebServer/CMakeFiles/myWebServer.dir/build.make myWebServer/CMakeFiles/myWebServer.dir/HttpData.cpp.o.provides.build
.PHONY : myWebServer/CMakeFiles/myWebServer.dir/HttpData.cpp.o.provides

myWebServer/CMakeFiles/myWebServer.dir/HttpData.cpp.o.provides.build: myWebServer/CMakeFiles/myWebServer.dir/HttpData.cpp.o


myWebServer/CMakeFiles/myWebServer.dir/Listenfd.cpp.o: myWebServer/CMakeFiles/myWebServer.dir/flags.make
myWebServer/CMakeFiles/myWebServer.dir/Listenfd.cpp.o: ../../myWebServer/Listenfd.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/web/myWebServer/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object myWebServer/CMakeFiles/myWebServer.dir/Listenfd.cpp.o"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/myWebServer.dir/Listenfd.cpp.o -c /home/web/myWebServer/myWebServer/Listenfd.cpp

myWebServer/CMakeFiles/myWebServer.dir/Listenfd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myWebServer.dir/Listenfd.cpp.i"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/web/myWebServer/myWebServer/Listenfd.cpp > CMakeFiles/myWebServer.dir/Listenfd.cpp.i

myWebServer/CMakeFiles/myWebServer.dir/Listenfd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myWebServer.dir/Listenfd.cpp.s"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/web/myWebServer/myWebServer/Listenfd.cpp -o CMakeFiles/myWebServer.dir/Listenfd.cpp.s

myWebServer/CMakeFiles/myWebServer.dir/Listenfd.cpp.o.requires:

.PHONY : myWebServer/CMakeFiles/myWebServer.dir/Listenfd.cpp.o.requires

myWebServer/CMakeFiles/myWebServer.dir/Listenfd.cpp.o.provides: myWebServer/CMakeFiles/myWebServer.dir/Listenfd.cpp.o.requires
	$(MAKE) -f myWebServer/CMakeFiles/myWebServer.dir/build.make myWebServer/CMakeFiles/myWebServer.dir/Listenfd.cpp.o.provides.build
.PHONY : myWebServer/CMakeFiles/myWebServer.dir/Listenfd.cpp.o.provides

myWebServer/CMakeFiles/myWebServer.dir/Listenfd.cpp.o.provides.build: myWebServer/CMakeFiles/myWebServer.dir/Listenfd.cpp.o


myWebServer/CMakeFiles/myWebServer.dir/Main.cpp.o: myWebServer/CMakeFiles/myWebServer.dir/flags.make
myWebServer/CMakeFiles/myWebServer.dir/Main.cpp.o: ../../myWebServer/Main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/web/myWebServer/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object myWebServer/CMakeFiles/myWebServer.dir/Main.cpp.o"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/myWebServer.dir/Main.cpp.o -c /home/web/myWebServer/myWebServer/Main.cpp

myWebServer/CMakeFiles/myWebServer.dir/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myWebServer.dir/Main.cpp.i"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/web/myWebServer/myWebServer/Main.cpp > CMakeFiles/myWebServer.dir/Main.cpp.i

myWebServer/CMakeFiles/myWebServer.dir/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myWebServer.dir/Main.cpp.s"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/web/myWebServer/myWebServer/Main.cpp -o CMakeFiles/myWebServer.dir/Main.cpp.s

myWebServer/CMakeFiles/myWebServer.dir/Main.cpp.o.requires:

.PHONY : myWebServer/CMakeFiles/myWebServer.dir/Main.cpp.o.requires

myWebServer/CMakeFiles/myWebServer.dir/Main.cpp.o.provides: myWebServer/CMakeFiles/myWebServer.dir/Main.cpp.o.requires
	$(MAKE) -f myWebServer/CMakeFiles/myWebServer.dir/build.make myWebServer/CMakeFiles/myWebServer.dir/Main.cpp.o.provides.build
.PHONY : myWebServer/CMakeFiles/myWebServer.dir/Main.cpp.o.provides

myWebServer/CMakeFiles/myWebServer.dir/Main.cpp.o.provides.build: myWebServer/CMakeFiles/myWebServer.dir/Main.cpp.o


myWebServer/CMakeFiles/myWebServer.dir/Server.cpp.o: myWebServer/CMakeFiles/myWebServer.dir/flags.make
myWebServer/CMakeFiles/myWebServer.dir/Server.cpp.o: ../../myWebServer/Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/web/myWebServer/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object myWebServer/CMakeFiles/myWebServer.dir/Server.cpp.o"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/myWebServer.dir/Server.cpp.o -c /home/web/myWebServer/myWebServer/Server.cpp

myWebServer/CMakeFiles/myWebServer.dir/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myWebServer.dir/Server.cpp.i"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/web/myWebServer/myWebServer/Server.cpp > CMakeFiles/myWebServer.dir/Server.cpp.i

myWebServer/CMakeFiles/myWebServer.dir/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myWebServer.dir/Server.cpp.s"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/web/myWebServer/myWebServer/Server.cpp -o CMakeFiles/myWebServer.dir/Server.cpp.s

myWebServer/CMakeFiles/myWebServer.dir/Server.cpp.o.requires:

.PHONY : myWebServer/CMakeFiles/myWebServer.dir/Server.cpp.o.requires

myWebServer/CMakeFiles/myWebServer.dir/Server.cpp.o.provides: myWebServer/CMakeFiles/myWebServer.dir/Server.cpp.o.requires
	$(MAKE) -f myWebServer/CMakeFiles/myWebServer.dir/build.make myWebServer/CMakeFiles/myWebServer.dir/Server.cpp.o.provides.build
.PHONY : myWebServer/CMakeFiles/myWebServer.dir/Server.cpp.o.provides

myWebServer/CMakeFiles/myWebServer.dir/Server.cpp.o.provides.build: myWebServer/CMakeFiles/myWebServer.dir/Server.cpp.o


myWebServer/CMakeFiles/myWebServer.dir/ThreadPool.cpp.o: myWebServer/CMakeFiles/myWebServer.dir/flags.make
myWebServer/CMakeFiles/myWebServer.dir/ThreadPool.cpp.o: ../../myWebServer/ThreadPool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/web/myWebServer/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object myWebServer/CMakeFiles/myWebServer.dir/ThreadPool.cpp.o"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/myWebServer.dir/ThreadPool.cpp.o -c /home/web/myWebServer/myWebServer/ThreadPool.cpp

myWebServer/CMakeFiles/myWebServer.dir/ThreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myWebServer.dir/ThreadPool.cpp.i"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/web/myWebServer/myWebServer/ThreadPool.cpp > CMakeFiles/myWebServer.dir/ThreadPool.cpp.i

myWebServer/CMakeFiles/myWebServer.dir/ThreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myWebServer.dir/ThreadPool.cpp.s"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/web/myWebServer/myWebServer/ThreadPool.cpp -o CMakeFiles/myWebServer.dir/ThreadPool.cpp.s

myWebServer/CMakeFiles/myWebServer.dir/ThreadPool.cpp.o.requires:

.PHONY : myWebServer/CMakeFiles/myWebServer.dir/ThreadPool.cpp.o.requires

myWebServer/CMakeFiles/myWebServer.dir/ThreadPool.cpp.o.provides: myWebServer/CMakeFiles/myWebServer.dir/ThreadPool.cpp.o.requires
	$(MAKE) -f myWebServer/CMakeFiles/myWebServer.dir/build.make myWebServer/CMakeFiles/myWebServer.dir/ThreadPool.cpp.o.provides.build
.PHONY : myWebServer/CMakeFiles/myWebServer.dir/ThreadPool.cpp.o.provides

myWebServer/CMakeFiles/myWebServer.dir/ThreadPool.cpp.o.provides.build: myWebServer/CMakeFiles/myWebServer.dir/ThreadPool.cpp.o


myWebServer/CMakeFiles/myWebServer.dir/Timer.cpp.o: myWebServer/CMakeFiles/myWebServer.dir/flags.make
myWebServer/CMakeFiles/myWebServer.dir/Timer.cpp.o: ../../myWebServer/Timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/web/myWebServer/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object myWebServer/CMakeFiles/myWebServer.dir/Timer.cpp.o"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/myWebServer.dir/Timer.cpp.o -c /home/web/myWebServer/myWebServer/Timer.cpp

myWebServer/CMakeFiles/myWebServer.dir/Timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myWebServer.dir/Timer.cpp.i"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/web/myWebServer/myWebServer/Timer.cpp > CMakeFiles/myWebServer.dir/Timer.cpp.i

myWebServer/CMakeFiles/myWebServer.dir/Timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myWebServer.dir/Timer.cpp.s"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/web/myWebServer/myWebServer/Timer.cpp -o CMakeFiles/myWebServer.dir/Timer.cpp.s

myWebServer/CMakeFiles/myWebServer.dir/Timer.cpp.o.requires:

.PHONY : myWebServer/CMakeFiles/myWebServer.dir/Timer.cpp.o.requires

myWebServer/CMakeFiles/myWebServer.dir/Timer.cpp.o.provides: myWebServer/CMakeFiles/myWebServer.dir/Timer.cpp.o.requires
	$(MAKE) -f myWebServer/CMakeFiles/myWebServer.dir/build.make myWebServer/CMakeFiles/myWebServer.dir/Timer.cpp.o.provides.build
.PHONY : myWebServer/CMakeFiles/myWebServer.dir/Timer.cpp.o.provides

myWebServer/CMakeFiles/myWebServer.dir/Timer.cpp.o.provides.build: myWebServer/CMakeFiles/myWebServer.dir/Timer.cpp.o


myWebServer/CMakeFiles/myWebServer.dir/Util.cpp.o: myWebServer/CMakeFiles/myWebServer.dir/flags.make
myWebServer/CMakeFiles/myWebServer.dir/Util.cpp.o: ../../myWebServer/Util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/web/myWebServer/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object myWebServer/CMakeFiles/myWebServer.dir/Util.cpp.o"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/myWebServer.dir/Util.cpp.o -c /home/web/myWebServer/myWebServer/Util.cpp

myWebServer/CMakeFiles/myWebServer.dir/Util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myWebServer.dir/Util.cpp.i"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/web/myWebServer/myWebServer/Util.cpp > CMakeFiles/myWebServer.dir/Util.cpp.i

myWebServer/CMakeFiles/myWebServer.dir/Util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myWebServer.dir/Util.cpp.s"
	cd /home/web/myWebServer/build/Debug/myWebServer && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/web/myWebServer/myWebServer/Util.cpp -o CMakeFiles/myWebServer.dir/Util.cpp.s

myWebServer/CMakeFiles/myWebServer.dir/Util.cpp.o.requires:

.PHONY : myWebServer/CMakeFiles/myWebServer.dir/Util.cpp.o.requires

myWebServer/CMakeFiles/myWebServer.dir/Util.cpp.o.provides: myWebServer/CMakeFiles/myWebServer.dir/Util.cpp.o.requires
	$(MAKE) -f myWebServer/CMakeFiles/myWebServer.dir/build.make myWebServer/CMakeFiles/myWebServer.dir/Util.cpp.o.provides.build
.PHONY : myWebServer/CMakeFiles/myWebServer.dir/Util.cpp.o.provides

myWebServer/CMakeFiles/myWebServer.dir/Util.cpp.o.provides.build: myWebServer/CMakeFiles/myWebServer.dir/Util.cpp.o


# Object files for target myWebServer
myWebServer_OBJECTS = \
"CMakeFiles/myWebServer.dir/Channel.cpp.o" \
"CMakeFiles/myWebServer.dir/Epoll.cpp.o" \
"CMakeFiles/myWebServer.dir/Eventfd.cpp.o" \
"CMakeFiles/myWebServer.dir/EventLoop.cpp.o" \
"CMakeFiles/myWebServer.dir/HttpData.cpp.o" \
"CMakeFiles/myWebServer.dir/Listenfd.cpp.o" \
"CMakeFiles/myWebServer.dir/Main.cpp.o" \
"CMakeFiles/myWebServer.dir/Server.cpp.o" \
"CMakeFiles/myWebServer.dir/ThreadPool.cpp.o" \
"CMakeFiles/myWebServer.dir/Timer.cpp.o" \
"CMakeFiles/myWebServer.dir/Util.cpp.o"

# External object files for target myWebServer
myWebServer_EXTERNAL_OBJECTS =

myWebServer/myWebServer: myWebServer/CMakeFiles/myWebServer.dir/Channel.cpp.o
myWebServer/myWebServer: myWebServer/CMakeFiles/myWebServer.dir/Epoll.cpp.o
myWebServer/myWebServer: myWebServer/CMakeFiles/myWebServer.dir/Eventfd.cpp.o
myWebServer/myWebServer: myWebServer/CMakeFiles/myWebServer.dir/EventLoop.cpp.o
myWebServer/myWebServer: myWebServer/CMakeFiles/myWebServer.dir/HttpData.cpp.o
myWebServer/myWebServer: myWebServer/CMakeFiles/myWebServer.dir/Listenfd.cpp.o
myWebServer/myWebServer: myWebServer/CMakeFiles/myWebServer.dir/Main.cpp.o
myWebServer/myWebServer: myWebServer/CMakeFiles/myWebServer.dir/Server.cpp.o
myWebServer/myWebServer: myWebServer/CMakeFiles/myWebServer.dir/ThreadPool.cpp.o
myWebServer/myWebServer: myWebServer/CMakeFiles/myWebServer.dir/Timer.cpp.o
myWebServer/myWebServer: myWebServer/CMakeFiles/myWebServer.dir/Util.cpp.o
myWebServer/myWebServer: myWebServer/CMakeFiles/myWebServer.dir/build.make
myWebServer/myWebServer: myWebServer/base/libserver_base.a
myWebServer/myWebServer: myWebServer/CMakeFiles/myWebServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/web/myWebServer/build/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX executable myWebServer"
	cd /home/web/myWebServer/build/Debug/myWebServer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/myWebServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
myWebServer/CMakeFiles/myWebServer.dir/build: myWebServer/myWebServer

.PHONY : myWebServer/CMakeFiles/myWebServer.dir/build

myWebServer/CMakeFiles/myWebServer.dir/requires: myWebServer/CMakeFiles/myWebServer.dir/Channel.cpp.o.requires
myWebServer/CMakeFiles/myWebServer.dir/requires: myWebServer/CMakeFiles/myWebServer.dir/Epoll.cpp.o.requires
myWebServer/CMakeFiles/myWebServer.dir/requires: myWebServer/CMakeFiles/myWebServer.dir/Eventfd.cpp.o.requires
myWebServer/CMakeFiles/myWebServer.dir/requires: myWebServer/CMakeFiles/myWebServer.dir/EventLoop.cpp.o.requires
myWebServer/CMakeFiles/myWebServer.dir/requires: myWebServer/CMakeFiles/myWebServer.dir/HttpData.cpp.o.requires
myWebServer/CMakeFiles/myWebServer.dir/requires: myWebServer/CMakeFiles/myWebServer.dir/Listenfd.cpp.o.requires
myWebServer/CMakeFiles/myWebServer.dir/requires: myWebServer/CMakeFiles/myWebServer.dir/Main.cpp.o.requires
myWebServer/CMakeFiles/myWebServer.dir/requires: myWebServer/CMakeFiles/myWebServer.dir/Server.cpp.o.requires
myWebServer/CMakeFiles/myWebServer.dir/requires: myWebServer/CMakeFiles/myWebServer.dir/ThreadPool.cpp.o.requires
myWebServer/CMakeFiles/myWebServer.dir/requires: myWebServer/CMakeFiles/myWebServer.dir/Timer.cpp.o.requires
myWebServer/CMakeFiles/myWebServer.dir/requires: myWebServer/CMakeFiles/myWebServer.dir/Util.cpp.o.requires

.PHONY : myWebServer/CMakeFiles/myWebServer.dir/requires

myWebServer/CMakeFiles/myWebServer.dir/clean:
	cd /home/web/myWebServer/build/Debug/myWebServer && $(CMAKE_COMMAND) -P CMakeFiles/myWebServer.dir/cmake_clean.cmake
.PHONY : myWebServer/CMakeFiles/myWebServer.dir/clean

myWebServer/CMakeFiles/myWebServer.dir/depend:
	cd /home/web/myWebServer/build/Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/web/myWebServer /home/web/myWebServer/myWebServer /home/web/myWebServer/build/Debug /home/web/myWebServer/build/Debug/myWebServer /home/web/myWebServer/build/Debug/myWebServer/CMakeFiles/myWebServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : myWebServer/CMakeFiles/myWebServer.dir/depend


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
CMAKE_SOURCE_DIR = /samba_share/KCP_Project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /samba_share/KCP_Project/build

# Include any dependencies generated for this target.
include CMakeFiles/kcp_chat_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/kcp_chat_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kcp_chat_client.dir/flags.make

CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.o: CMakeFiles/kcp_chat_client.dir/flags.make
CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.o: ../src/client/ChatClient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/samba_share/KCP_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.o -c /samba_share/KCP_Project/src/client/ChatClient.cpp

CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /samba_share/KCP_Project/src/client/ChatClient.cpp > CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.i

CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /samba_share/KCP_Project/src/client/ChatClient.cpp -o CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.s

CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.o.requires:

.PHONY : CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.o.requires

CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.o.provides: CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.o.requires
	$(MAKE) -f CMakeFiles/kcp_chat_client.dir/build.make CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.o.provides.build
.PHONY : CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.o.provides

CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.o.provides.build: CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.o


CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.o: CMakeFiles/kcp_chat_client.dir/flags.make
CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.o: ../src/common/CommandRouter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/samba_share/KCP_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.o -c /samba_share/KCP_Project/src/common/CommandRouter.cpp

CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /samba_share/KCP_Project/src/common/CommandRouter.cpp > CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.i

CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /samba_share/KCP_Project/src/common/CommandRouter.cpp -o CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.s

CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.o.requires:

.PHONY : CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.o.requires

CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.o.provides: CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.o.requires
	$(MAKE) -f CMakeFiles/kcp_chat_client.dir/build.make CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.o.provides.build
.PHONY : CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.o.provides

CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.o.provides.build: CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.o


CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.o: CMakeFiles/kcp_chat_client.dir/flags.make
CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.o: ../src/common/KcpSession.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/samba_share/KCP_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.o -c /samba_share/KCP_Project/src/common/KcpSession.cpp

CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /samba_share/KCP_Project/src/common/KcpSession.cpp > CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.i

CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /samba_share/KCP_Project/src/common/KcpSession.cpp -o CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.s

CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.o.requires:

.PHONY : CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.o.requires

CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.o.provides: CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.o.requires
	$(MAKE) -f CMakeFiles/kcp_chat_client.dir/build.make CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.o.provides.build
.PHONY : CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.o.provides

CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.o.provides.build: CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.o


CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.o: CMakeFiles/kcp_chat_client.dir/flags.make
CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.o: ../src/common/KcpSessionFactory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/samba_share/KCP_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.o -c /samba_share/KCP_Project/src/common/KcpSessionFactory.cpp

CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /samba_share/KCP_Project/src/common/KcpSessionFactory.cpp > CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.i

CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /samba_share/KCP_Project/src/common/KcpSessionFactory.cpp -o CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.s

CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.o.requires:

.PHONY : CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.o.requires

CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.o.provides: CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.o.requires
	$(MAKE) -f CMakeFiles/kcp_chat_client.dir/build.make CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.o.provides.build
.PHONY : CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.o.provides

CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.o.provides.build: CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.o


CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.o: CMakeFiles/kcp_chat_client.dir/flags.make
CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.o: ../src/common/NetworkTransport.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/samba_share/KCP_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.o -c /samba_share/KCP_Project/src/common/NetworkTransport.cpp

CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /samba_share/KCP_Project/src/common/NetworkTransport.cpp > CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.i

CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /samba_share/KCP_Project/src/common/NetworkTransport.cpp -o CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.s

CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.o.requires:

.PHONY : CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.o.requires

CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.o.provides: CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.o.requires
	$(MAKE) -f CMakeFiles/kcp_chat_client.dir/build.make CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.o.provides.build
.PHONY : CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.o.provides

CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.o.provides.build: CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.o


CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.o: CMakeFiles/kcp_chat_client.dir/flags.make
CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.o: ../src/common/Room.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/samba_share/KCP_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.o -c /samba_share/KCP_Project/src/common/Room.cpp

CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /samba_share/KCP_Project/src/common/Room.cpp > CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.i

CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /samba_share/KCP_Project/src/common/Room.cpp -o CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.s

CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.o.requires:

.PHONY : CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.o.requires

CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.o.provides: CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.o.requires
	$(MAKE) -f CMakeFiles/kcp_chat_client.dir/build.make CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.o.provides.build
.PHONY : CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.o.provides

CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.o.provides.build: CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.o


CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.o: CMakeFiles/kcp_chat_client.dir/flags.make
CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.o: ../src/common/Session.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/samba_share/KCP_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.o -c /samba_share/KCP_Project/src/common/Session.cpp

CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /samba_share/KCP_Project/src/common/Session.cpp > CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.i

CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /samba_share/KCP_Project/src/common/Session.cpp -o CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.s

CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.o.requires:

.PHONY : CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.o.requires

CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.o.provides: CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.o.requires
	$(MAKE) -f CMakeFiles/kcp_chat_client.dir/build.make CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.o.provides.build
.PHONY : CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.o.provides

CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.o.provides.build: CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.o


CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.o: CMakeFiles/kcp_chat_client.dir/flags.make
CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.o: ../src/common/SessionManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/samba_share/KCP_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.o -c /samba_share/KCP_Project/src/common/SessionManager.cpp

CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /samba_share/KCP_Project/src/common/SessionManager.cpp > CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.i

CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /samba_share/KCP_Project/src/common/SessionManager.cpp -o CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.s

CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.o.requires:

.PHONY : CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.o.requires

CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.o.provides: CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/kcp_chat_client.dir/build.make CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.o.provides.build
.PHONY : CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.o.provides

CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.o.provides.build: CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.o


CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.o: CMakeFiles/kcp_chat_client.dir/flags.make
CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.o: ../src/common/Singleton.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/samba_share/KCP_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.o -c /samba_share/KCP_Project/src/common/Singleton.cpp

CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /samba_share/KCP_Project/src/common/Singleton.cpp > CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.i

CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /samba_share/KCP_Project/src/common/Singleton.cpp -o CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.s

CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.o.requires:

.PHONY : CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.o.requires

CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.o.provides: CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.o.requires
	$(MAKE) -f CMakeFiles/kcp_chat_client.dir/build.make CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.o.provides.build
.PHONY : CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.o.provides

CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.o.provides.build: CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.o


CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.o: CMakeFiles/kcp_chat_client.dir/flags.make
CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.o: ../third_party/kcp/ikcp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/samba_share/KCP_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.o   -c /samba_share/KCP_Project/third_party/kcp/ikcp.c

CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /samba_share/KCP_Project/third_party/kcp/ikcp.c > CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.i

CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /samba_share/KCP_Project/third_party/kcp/ikcp.c -o CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.s

CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.o.requires:

.PHONY : CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.o.requires

CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.o.provides: CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.o.requires
	$(MAKE) -f CMakeFiles/kcp_chat_client.dir/build.make CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.o.provides.build
.PHONY : CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.o.provides

CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.o.provides.build: CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.o


CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.o: CMakeFiles/kcp_chat_client.dir/flags.make
CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.o: ../src/client_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/samba_share/KCP_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.o -c /samba_share/KCP_Project/src/client_main.cpp

CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /samba_share/KCP_Project/src/client_main.cpp > CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.i

CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /samba_share/KCP_Project/src/client_main.cpp -o CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.s

CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.o.requires:

.PHONY : CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.o.requires

CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.o.provides: CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.o.requires
	$(MAKE) -f CMakeFiles/kcp_chat_client.dir/build.make CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.o.provides.build
.PHONY : CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.o.provides

CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.o.provides.build: CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.o


# Object files for target kcp_chat_client
kcp_chat_client_OBJECTS = \
"CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.o" \
"CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.o" \
"CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.o" \
"CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.o" \
"CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.o" \
"CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.o" \
"CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.o" \
"CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.o" \
"CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.o" \
"CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.o" \
"CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.o"

# External object files for target kcp_chat_client
kcp_chat_client_EXTERNAL_OBJECTS =

bin/kcp_chat_client: CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.o
bin/kcp_chat_client: CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.o
bin/kcp_chat_client: CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.o
bin/kcp_chat_client: CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.o
bin/kcp_chat_client: CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.o
bin/kcp_chat_client: CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.o
bin/kcp_chat_client: CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.o
bin/kcp_chat_client: CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.o
bin/kcp_chat_client: CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.o
bin/kcp_chat_client: CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.o
bin/kcp_chat_client: CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.o
bin/kcp_chat_client: CMakeFiles/kcp_chat_client.dir/build.make
bin/kcp_chat_client: libkcp.a
bin/kcp_chat_client: CMakeFiles/kcp_chat_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/samba_share/KCP_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX executable bin/kcp_chat_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kcp_chat_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/kcp_chat_client.dir/build: bin/kcp_chat_client

.PHONY : CMakeFiles/kcp_chat_client.dir/build

CMakeFiles/kcp_chat_client.dir/requires: CMakeFiles/kcp_chat_client.dir/src/client/ChatClient.cpp.o.requires
CMakeFiles/kcp_chat_client.dir/requires: CMakeFiles/kcp_chat_client.dir/src/common/CommandRouter.cpp.o.requires
CMakeFiles/kcp_chat_client.dir/requires: CMakeFiles/kcp_chat_client.dir/src/common/KcpSession.cpp.o.requires
CMakeFiles/kcp_chat_client.dir/requires: CMakeFiles/kcp_chat_client.dir/src/common/KcpSessionFactory.cpp.o.requires
CMakeFiles/kcp_chat_client.dir/requires: CMakeFiles/kcp_chat_client.dir/src/common/NetworkTransport.cpp.o.requires
CMakeFiles/kcp_chat_client.dir/requires: CMakeFiles/kcp_chat_client.dir/src/common/Room.cpp.o.requires
CMakeFiles/kcp_chat_client.dir/requires: CMakeFiles/kcp_chat_client.dir/src/common/Session.cpp.o.requires
CMakeFiles/kcp_chat_client.dir/requires: CMakeFiles/kcp_chat_client.dir/src/common/SessionManager.cpp.o.requires
CMakeFiles/kcp_chat_client.dir/requires: CMakeFiles/kcp_chat_client.dir/src/common/Singleton.cpp.o.requires
CMakeFiles/kcp_chat_client.dir/requires: CMakeFiles/kcp_chat_client.dir/third_party/kcp/ikcp.c.o.requires
CMakeFiles/kcp_chat_client.dir/requires: CMakeFiles/kcp_chat_client.dir/src/client_main.cpp.o.requires

.PHONY : CMakeFiles/kcp_chat_client.dir/requires

CMakeFiles/kcp_chat_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kcp_chat_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kcp_chat_client.dir/clean

CMakeFiles/kcp_chat_client.dir/depend:
	cd /samba_share/KCP_Project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /samba_share/KCP_Project /samba_share/KCP_Project /samba_share/KCP_Project/build /samba_share/KCP_Project/build /samba_share/KCP_Project/build/CMakeFiles/kcp_chat_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kcp_chat_client.dir/depend


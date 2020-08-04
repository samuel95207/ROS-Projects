# Install script for directory: /home/locobot/ROS-Projects/interbotix_ws/src/interbotix_ros_arms/interbotix_examples/interbotix_turret_control

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/locobot/ROS-Projects/interbotix_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_turret_control/msg" TYPE FILE FILES "/home/locobot/ROS-Projects/interbotix_ws/src/interbotix_ros_arms/interbotix_examples/interbotix_turret_control/msg/TurretJoyControl.msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_turret_control/cmake" TYPE FILE FILES "/home/locobot/ROS-Projects/interbotix_ws/build/interbotix_ros_arms/interbotix_examples/interbotix_turret_control/catkin_generated/installspace/interbotix_turret_control-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/locobot/ROS-Projects/interbotix_ws/devel/include/interbotix_turret_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/locobot/ROS-Projects/interbotix_ws/devel/share/roseus/ros/interbotix_turret_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/locobot/ROS-Projects/interbotix_ws/devel/share/common-lisp/ros/interbotix_turret_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/locobot/ROS-Projects/interbotix_ws/devel/share/gennodejs/ros/interbotix_turret_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/locobot/ROS-Projects/interbotix_ws/devel/lib/python2.7/dist-packages/interbotix_turret_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/locobot/ROS-Projects/interbotix_ws/devel/lib/python2.7/dist-packages/interbotix_turret_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/locobot/ROS-Projects/interbotix_ws/build/interbotix_ros_arms/interbotix_examples/interbotix_turret_control/catkin_generated/installspace/interbotix_turret_control.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_turret_control/cmake" TYPE FILE FILES "/home/locobot/ROS-Projects/interbotix_ws/build/interbotix_ros_arms/interbotix_examples/interbotix_turret_control/catkin_generated/installspace/interbotix_turret_control-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_turret_control/cmake" TYPE FILE FILES
    "/home/locobot/ROS-Projects/interbotix_ws/build/interbotix_ros_arms/interbotix_examples/interbotix_turret_control/catkin_generated/installspace/interbotix_turret_controlConfig.cmake"
    "/home/locobot/ROS-Projects/interbotix_ws/build/interbotix_ros_arms/interbotix_examples/interbotix_turret_control/catkin_generated/installspace/interbotix_turret_controlConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_turret_control" TYPE FILE FILES "/home/locobot/ROS-Projects/interbotix_ws/src/interbotix_ros_arms/interbotix_examples/interbotix_turret_control/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/interbotix_turret_control" TYPE PROGRAM FILES "/home/locobot/ROS-Projects/interbotix_ws/build/interbotix_ros_arms/interbotix_examples/interbotix_turret_control/catkin_generated/installspace/turret_control")
endif()


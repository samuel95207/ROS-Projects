# Install script for directory: /home/tx2-08/ROS-Projects/interbotix_ws/src/interbotix_ros_arms_pi/interbotix_sdk

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/tx2-08/ROS-Projects/interbotix_ws/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/tx2-08/ROS-Projects/interbotix_ws/build/interbotix_ros_arms_pi/interbotix_sdk/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_sdk/msg" TYPE FILE FILES
    "/home/tx2-08/ROS-Projects/interbotix_ws/src/interbotix_ros_arms_pi/interbotix_sdk/msg/JointCommands.msg"
    "/home/tx2-08/ROS-Projects/interbotix_ws/src/interbotix_ros_arms_pi/interbotix_sdk/msg/SingleCommand.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_sdk/srv" TYPE FILE FILES
    "/home/tx2-08/ROS-Projects/interbotix_ws/src/interbotix_ros_arms_pi/interbotix_sdk/srv/FirmwareGains.srv"
    "/home/tx2-08/ROS-Projects/interbotix_ws/src/interbotix_ros_arms_pi/interbotix_sdk/srv/OperatingModes.srv"
    "/home/tx2-08/ROS-Projects/interbotix_ws/src/interbotix_ros_arms_pi/interbotix_sdk/srv/RegisterValues.srv"
    "/home/tx2-08/ROS-Projects/interbotix_ws/src/interbotix_ros_arms_pi/interbotix_sdk/srv/RobotInfo.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_sdk/cmake" TYPE FILE FILES "/home/tx2-08/ROS-Projects/interbotix_ws/build/interbotix_ros_arms_pi/interbotix_sdk/catkin_generated/installspace/interbotix_sdk-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/tx2-08/ROS-Projects/interbotix_ws/devel/include/interbotix_sdk")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/tx2-08/ROS-Projects/interbotix_ws/devel/share/roseus/ros/interbotix_sdk")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/tx2-08/ROS-Projects/interbotix_ws/devel/share/common-lisp/ros/interbotix_sdk")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/tx2-08/ROS-Projects/interbotix_ws/devel/share/gennodejs/ros/interbotix_sdk")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/tx2-08/ROS-Projects/interbotix_ws/devel/lib/python2.7/dist-packages/interbotix_sdk")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/tx2-08/ROS-Projects/interbotix_ws/devel/lib/python2.7/dist-packages/interbotix_sdk" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/tx2-08/ROS-Projects/interbotix_ws/devel/lib/python2.7/dist-packages/interbotix_sdk" FILES_MATCHING REGEX "/home/tx2-08/ROS-Projects/interbotix_ws/devel/lib/python2.7/dist-packages/interbotix_sdk/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/tx2-08/ROS-Projects/interbotix_ws/build/interbotix_ros_arms_pi/interbotix_sdk/catkin_generated/installspace/interbotix_sdk.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_sdk/cmake" TYPE FILE FILES "/home/tx2-08/ROS-Projects/interbotix_ws/build/interbotix_ros_arms_pi/interbotix_sdk/catkin_generated/installspace/interbotix_sdk-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_sdk/cmake" TYPE FILE FILES
    "/home/tx2-08/ROS-Projects/interbotix_ws/build/interbotix_ros_arms_pi/interbotix_sdk/catkin_generated/installspace/interbotix_sdkConfig.cmake"
    "/home/tx2-08/ROS-Projects/interbotix_ws/build/interbotix_ros_arms_pi/interbotix_sdk/catkin_generated/installspace/interbotix_sdkConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/interbotix_sdk" TYPE FILE FILES "/home/tx2-08/ROS-Projects/interbotix_ws/src/interbotix_ros_arms_pi/interbotix_sdk/package.xml")
endif()


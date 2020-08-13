execute_process(COMMAND "/home/tx2-08/ROS-Projects/interbotix_ws/build/interbotix_ros_arms_pi/interbotix_descriptions/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/tx2-08/ROS-Projects/interbotix_ws/build/interbotix_ros_arms_pi/interbotix_descriptions/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/tx2-08/ROS-Projects/interbotix_ws/src/interbotix_ros_arms_pi/interbotix_sdk"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/tx2-08/ROS-Projects/interbotix_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/tx2-08/ROS-Projects/interbotix_ws/install/lib/python2.7/dist-packages:/home/tx2-08/ROS-Projects/interbotix_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/tx2-08/ROS-Projects/interbotix_ws/build" \
    "/usr/bin/python2" \
    "/home/tx2-08/ROS-Projects/interbotix_ws/src/interbotix_ros_arms_pi/interbotix_sdk/setup.py" \
     \
    build --build-base "/home/tx2-08/ROS-Projects/interbotix_ws/build/interbotix_ros_arms_pi/interbotix_sdk" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/tx2-08/ROS-Projects/interbotix_ws/install" --install-scripts="/home/tx2-08/ROS-Projects/interbotix_ws/install/bin"

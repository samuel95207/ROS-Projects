#! /bin/bash

ETH0_IP=$(ip addr show eth0 | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)
WLAN0_IP=$(ip addr show wlan0 | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)

source ~/HCC_competition_2020/environment.sh
export ROS_IP=10.42.0.1
echo "ETH0_IP=$ETH0_IP"
echo "WLAN0_IP=$WLAN0_IP"
roslaunch teleop_twist_joy teleop.launch eth0:=$ETH0_IP wlan0:=$WLAN0_IP

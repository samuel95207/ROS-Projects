#!/usr/bin/env bash
#
# Typical usage: ./join.bash subt
#

IMG=lspss95207/ros-melodic

xhost +
containerid=$(docker ps -aqf "ancestor=${IMG}")&& echo $containerid
docker image rm lpss95207/ros-melodic
docker commit RosMelodic lspss95207/ros-melodic:lastest
sudo docker push lspss95207/ros-melodic
xhost -

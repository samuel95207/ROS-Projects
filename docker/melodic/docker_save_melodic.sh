#!/usr/bin/env bash
#
# Typical usage: ./join.bash subt
#

IMG=lspss95207/ros-melodic

xhost +
containerid=$(docker ps -aqf "ancestor=${IMG}")&& echo $containerid
docker tag lspss95207/ros-melodic:latest lspss95207/ros-melodic:old
docker rmi lpss95207/ros-melodic:latest
docker commit RosMelodic lspss95207/ros-melodic:latest
docker container stop RosMelodic
docker rmi lspss95207/ros-melodic:old
sudo docker push lspss95207/ros-melodic
xhost -

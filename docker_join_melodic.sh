#!/usr/bin/env bash
#
# Typical usage: ./join.bash subt
#

IMG=lspss95207/ros-melodic

xhost +
containerid=$(docker ps -aqf "ancestor=${IMG}")&& echo $containerid
docker exec --privileged -e DISPLAY=${DISPLAY} -e LINES="$(tput lines)" -it ${containerid} bash
xhost -

#!/bin/bash
#
# @author Alberto Soragna (alberto dot soragna at gmail dot com)
# @2018 

XSOCK=/tmp/.X11-unix

# --runtime=nvidia \
docker run -it --rm \
 -e DISPLAY=$DISPLAY \
 -v $XSOCK:$XSOCK \
 -v $HOME/.Xauthority:/root/.Xauthority \
 -v /home/alsora/source/alsora/ros2-tensorflow:/root/ros2-tensorflow \
 --privileged \
 --net=host \
 ros2_tensorflow_gpu "$@"

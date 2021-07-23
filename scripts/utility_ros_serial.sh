#!/bin/bash
source /opt/ros/melodic/setup.bash
rosrun rosserial_python serial_node.py _port:=/dev/ttyACM0 _baud:=115200


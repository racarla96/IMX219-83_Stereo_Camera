#!/bin/bash

# Update and Upgrade Packages 
sudo apt update
sudo apt upgrade -y

# Install serial port and set permissions
sudo apt install screen -y 
sudo usermod -a -G dialout $USER

# Install ROS
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl -y
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
## sudo apt install ros-noetic-desktop-full -y # Noetic not supported
sudo apt install ros-melodic-desktop-full -y
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential -y
sudo rosdep init
rosdep update

sudo apt-get install ros-noetic-rosserial

sudo reboot

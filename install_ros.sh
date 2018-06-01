#!/usr/bin/env bash

# ROS installation script
# http://wiki.ros.org/kinetic/Installation/Ubuntu
# http://wiki.ros.org/melodic/Installation/Ubuntu

# figure out ROS distro
ubuntu_distro=$(lsb_release -sc)
ros_distro=kinetic # default
if [ "$ubuntu_distro" = "xenial" ]; then
    ros_distro=kinetic
    echo $ros_distro
elif [ "$ubuntu_distro" = "bionic" ]; then
    ros_distro=melodic
fi

echo -e "\033[0;36mInstalling ROS $ros_distro\033[0m"

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt-get update
sudo apt-get upgrade

if [ $(uname -m) == 'x86_64' ]; then
    echo -e "\033[0;33mros-$ros_distro-desktop-full\033[0m"
    sudo apt-get install -y ros-$ros_distro-desktop-full
else
    echo -e "\033[0;33mros-$ros_distro-desktop\033[0m"
    sudo apt-get install -y ros-$ros_distro-desktop
fi

sudo rosdep init
rosdep update

echo "source /opt/ros/$ros_distro/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt-get install -y python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo apt-get install -y python-catkin-tools

sudo apt-get autoremove -y

echo -e '\033[0;32mROS installation done!\033[0m'

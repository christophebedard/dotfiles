#!/usr/bin/env bash

# ROS installation script
# http://wiki.ros.org/kinetic/Installation/Ubuntu

distro=kinetic


echo -e "\033[0;36mInstalling ROS $distro\033[0m"

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt-get update
sudo apt-get upgrade

if [ $(uname -m) == 'x86_64' ]; then
    echo -e "\033[0;33mros-$distro-desktop-full\033[0m"
    sudo apt-get install -y ros-$distro-desktop-full
else
    echo -e "\033[0;33mros-$distro-desktop\033[0m"
    sudo apt-get install -y ros-$distro-desktop
fi

sudo rosdep init
rosdep update

echo "source /opt/ros/$distro/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt-get install -y python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo apt-get install -y python-catkin-tools

sudo apt-get autoremove -y

echo -e '\033[0;32mROS installation done!\033[0m'

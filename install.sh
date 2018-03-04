#!/usr/bin/env bash

# Install useful packages
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install \
    google-chrome-stable \
    git \
    python-catkin-tools \
    yakuake \
    code \
    roboware-studio

sudo pip install \
    powerline-shell

# ROS
. ./install_ros.sh


# Update ~/.bashrc
cat .bashrc >> ~/.bashrc

# Update ~/.bash_aliases
cat .bash_aliases >> ~/.bash_aliases

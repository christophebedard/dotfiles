#!/usr/bin/env bash

# Install useful packages
sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y \
    python-pip \
    git \
    python-catkin-tools \
    yakuake

# git info
git config --global user.email "chrisvolkoff@gmail.com"
git config --global user.name "christophebedard"

# roboware-studio
# code

# google-chrome-stable
mkdir tmp/
cd tmp/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install -y

# powerline-shell
sudo pip install \
    powerline-shell
sudo apt-get install -y fonts-powerline
cp .powerline-shell.json ~/

# ROS
. ./install_ros.sh


# Update ~/.bashrc
cat .bashrc >> ~/.bashrc
# Update ~/.bash_aliases
cat .bash_aliases >> ~/.bash_aliases


echo -e '\033[0;32mAll done!\033[0m'

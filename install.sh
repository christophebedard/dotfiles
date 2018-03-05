#!/usr/bin/env bash

# info
email=chrisvolkoff@gmail.com
username=christophebedard


# Install useful packages
sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y \
    python-pip \
    git \
    python-catkin-tools \
    yakuake

# git info
git config --global user.email "$email"
git config --global user.name "$username"

# google-chrome-stable
mkdir tmp/
cd tmp/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install -y
cd ../

# code

# roboware-studio

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

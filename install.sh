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

# powerline-shell
sudo pip install \
    powerline-shell
sudo apt-get install -y fonts-powerline
cp .powerline-shell.json ~/

# google-chrome-stable
mkdir tmp/
cd tmp/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install -y
cd ../

# manual installations
echo -e '\033[0;36mManual installations\033[0m'
# code
echo -e '\033[0;36mhttps://code.visualstudio.com/download/\033[0m'
# roboware-studio
echo -e '\033[0;36mhttp://www.roboware.me/\033[0m'


# git info
git config --global user.email "$email"
git config --global user.name "$username"


# ROS
. ./install_ros.sh


# Update ~/.bashrc
cat .bashrc >> ~/.bashrc
# Update ~/.bash_aliases
cat .bash_aliases >> ~/.bash_aliases


echo -e '\033[0;32mAll done!\033[0m'

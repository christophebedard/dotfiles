#!/usr/bin/env bash

# info
email=bedard.christophe@gmail.com
username="Christophe Bedard"


# Install packages
sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y \
    python3-pip \
    git \
    htop \
    yakuake \
    gnome-tweaks

# Run yakuake so that it creates the config folders
yakuake &

# powerline-shell
sudo pip3 install \
    powerline-shell
sudo apt-get install -y fonts-powerline
rsync -a config/.powerline-shell.json ~/


sudo apt-get autoremove -y


# Set git info
git config --global user.email "$email"
git config --global user.name "$username"


# Update ~/.bash_aliases
cat .bash_aliases >> ~/.bash_aliases
# Update ~/.bashrc
cat .bashrc >> ~/.bashrc

# Config files
rsync -a --include=*.desktop --exclude=other desktop/ ~/.config/autostart/
rsync -a config/yakuakerc ~/.kde/share/config/
rsync -a config/onedrive_config ~/.config/onedrive/
rsync -a config/vscode_settings.json ~/.config/Code/User/settings.json
rsync -a .colcon/defaults.yaml ~/.colcon/
#rsync -a config/other/eclipse.desktop ~/.local/share/applications/

echo -e '\033[0;32mAll done!\033[0m'

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
    guake \
    gnome-tweaks

# Initial launch of guake
guake &

# powerline-shell
sudo pip3 install \
    powerline-shell
sudo apt-get install -y fonts-powerline
rsync -a config/.powerline-shell.json ~/


sudo apt-get autoremove -y


# Create and set up SSH key
ssh-keygen -t ed25519 -C "$email" -f ~/.ssh/id_ed25519 -q -N ""
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519


# Update ~/.bash_aliases
cat .bash_aliases >> ~/.bash_aliases
# Update ~/.bashrc
cat .bashrc >> ~/.bashrc

# Config files
rsync -a --include=*.desktop --exclude=other desktop/ ~/.config/autostart/
rsync -a config/.gitconfig ~/
#rsync -a config/onedrive_config ~/.config/onedrive/
rsync -a config/vscode_settings.json ~/.config/Code/User/settings.json
rsync -a .colcon/defaults.yaml ~/.colcon/
#rsync -a config/other/eclipse.desktop ~/.local/share/applications/
guake --restore-preferences config/guake.cfg

# Set git info
git config --global user.email "$email"
git config --global user.name "$username"
echo -en "\n\nSigned-off-by: $username <$email>" > ~/.config/.gittemplate
git config --global commit.template ~/.config/.gittemplate

echo -e '\033[0;32mAll done!\033[0m'

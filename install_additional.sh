#!/usr/bin/env bash

# install Spotify & Slack
snap install spotify
sudo snap install slack --classic

# autostart Spotify & Slack
rsync -a ./additional/spotify.desktop ~/.config/autostart/
rsync -a ./additional/slack.desktop ~/.config/autostart/

# add Eclipse shortcut
rsync -a ./additional/eclipse.desktop ~/.local/share/applications/

# setup RAID1 volume
sudo apt-get install mdadm
sudo mdadm --assemble --scan

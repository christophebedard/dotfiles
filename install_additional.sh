#!/usr/bin/env bash

# install Spotify & Slack
snap install spotify
sudo snap install slack --classic

# autostart Spotify & Slack
rsync -a ./additional/*.desktop ~/.config/autostart/

# setup RAID1 volume
sudo apt-get install mdadm
sudo mdadm --assemble --scan

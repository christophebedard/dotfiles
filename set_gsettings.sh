#!/usr/bin/env bash

# set switcher (alt+tab) to only offer windows from current workspace
gsettings set org.gnome.shell.app-switcher current-workspace-only true

# workspace
gsettings set org.gnome.shell.overrides dynamic-workspaces true
gsettings set org.gnome.mutter workspaces-only-on-primary false
gsettings set org.gnome.shell.extensions.dash-to-dock isolate-workspaces true
gsettings set org.gnome.shell.window-switcher current-workspace-only true

# hide trash & home icons on desktop
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
gsettings set org.gnome.shell.extensions.desktop-icons show-home false

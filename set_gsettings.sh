#!/usr/bin/env bash

# set switcher (alt+tab) to only offer windows from current workspace
gsettings set org.gnome.shell.app-switcher current-workspace-only true

# workspace
gsettings set org.gnome.shell.overrides dynamic-workspaces true
gsettings set org.gnome.mutter workspaces-only-on-primary false
gsettings set org.gnome.shell.extensions.dash-to-dock isolate-workspaces true
gsettings set org.gnome.shell.window-switcher current-workspace-only true

# hide trash & home icons on desktop and sidebar
gsettings set org.gnome.shell.extensions.ding show-trash false
gsettings set org.gnome.shell.extensions.ding show-home false
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false

# hide mounted volumes from sidebar
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false

# minimize on click
#gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

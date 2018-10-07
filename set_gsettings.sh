#!/usr/bin/env bash

# set switcher (alt+tab) to only offer windows from current workspace
gsettings set org.gnome.shell.app-switcher current-workspace-only true

# only show windows/applications from the current workspace in dock
gsettings set org.gnome.shell.extensions.dash-to-dock isolate-workspaces true

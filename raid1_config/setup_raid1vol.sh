#!/usr/bin/env bash

# setup RAID1 volume
sudo apt-get install mdadm
sudo mdadm --assemble --scan


# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# custom aliases
alias clc='clear'

ROS1_DISTRO=melodic
ROS2_DISTRO=foxy
alias srcros1='source /opt/ros/${ROS1_DISTRO}/setup.bash'
alias srcros2='source /opt/ros/${ROS2_DISTRO}/setup.bash'
alias srcme='source devel/setup.bash'
alias srcme2='source install/local_setup.bash'

alias f='nautilus .' # assuming nautilus (ubuntu) is the file explorer

alias onedrivelogs='journalctl --user-unit onedrive -f'
alias onedriverestart='systemctl --user restart onedrive.service'


# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# custom aliases
alias clc='clear'

ROS1_DISTRO=noetic
ROS2_DISTRO=galactic
alias srcros1='source /opt/ros/${ROS1_DISTRO}/setup.bash'
alias srcros2='source /opt/ros/${ROS2_DISTRO}/setup.bash'
alias srcme='source devel/setup.bash'
alias srcme2='source install/setup.bash'

alias f='nautilus .' # assuming nautilus (ubuntu) is the file explorer

alias onedrivelogs='journalctl --user-unit onedrive -f'
alias onedriverestart='systemctl --user restart onedrive.service'
alias onedrivesync='onedrive --synchronize'

alias cd-largestorage='cd /media/chris/largestorage'
alias cd-raid1vol='cd /media/chris/raid1vol'
alias cd-secondaryssd='cd /media/chris/secondaryssd'

alias ssh-server='ssh chris@server -p 1234'
alias docker-clean='docker stop $(docker ps -qa); docker rm $(docker ps -qa); docker rmi -f $(docker images -qa); docker volume rm $(docker volume ls -q); docker network rm $(docker network ls -q)'


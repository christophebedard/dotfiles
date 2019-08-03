
# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# aliases
alias clc='clear'
alias srcme='source devel/setup.bash'
alias srcme2='. ./install/local_setup.bash'
alias srcros2='source /opt/ros/dashing/setup.bash'
alias f='nautilus .' # assuming nautilus (ubuntu) is the file explorer (thunar for xubuntu)
alias onedrivelogs='journalctl --user-unit onedrive -f'
alias onedriverestart='systemctl --user restart onedrive.service'

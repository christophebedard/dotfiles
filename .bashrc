
# If in yakuake and more than 2 monitors, assuming more than 2
# monitors probably means there is a monitor above the main one
num_monitors=$(xrandr --listmonitors | sed -n 's/Monitors: \([[:digit:]]\)/\1/p')
if [[ "$num_monitors" -gt "2" ]] && [[ $(pstree -s $$ | grep yakuake) ]]; then
    # Print two empty lines because yakuake has a
    # bug that makes its terminal start off screen
    echo -e ""
    echo -e ""
fi

# powerline-shell
function _update_ps1() {
    PS1=$(powerline-shell $?)
}
if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

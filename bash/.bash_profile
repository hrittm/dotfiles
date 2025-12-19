# ~/.bash_profile

# Source .bashrc if it exists
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start X at login on tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx
fi

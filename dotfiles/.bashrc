if [ -f `which powerline-daemon` ]; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh
fi

setxkbmap ch

synclient TapButton1=0

shopt -s autocd

complete -cf sudo
complete -cf man
complete -cf pacman
complete -cf optirun
complete -cf primusrun

export PS1="\u@\h:\W $ "
export EDITOR="vim"
export SUDO_EDITOR="vim"
export TERMINAL="urxvt"
export NAS_MAC="00:11:32:36:E7:B7"

alias poweroff="sudo shutdown --poweroff now"
alias :q="exit"
alias ls="ls --color=auto"
alias update="yaourt -Syua"
alias explain="man"
alias plz="sudo "
alias pls="sudo "
alias sudo="sudo "
alias tmux="TERM=screen-256color-bce tmux"
alias shoot="scrot -d 5 -c -q 100 -s -z '%Y-%m-%d_$wx$h.png' -e 'mv $f ~/Pictures/Screenshots/'"
alias matlab-cli="matlab -nosplash -nodesktop -nodisplay"

export PATH="$PATH:/usr/local/bin:/home/ruben/scripts"

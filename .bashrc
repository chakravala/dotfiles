#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias cfg='/usr/bin/git --git-dir=~/.config.git/ --work-tree=~'

alias vimtex='vim --servername vim'

export VISUAL=vim

export EDITOR="$VISUAL"

export _JAVA_OPTIONS=-Dawt.useSystemAAFontSettings=on

export QT_AUTO_SCREEN_SCALE_FACTOR=0

export JULIA_NUM_THREADS=8

alias kbd_backlight='/bin/bash /usr/local/share/kbd_backlight'

complete -f -X '!*.tex' vimtex

#GDK_BACKEND=x11 /usr/bin/zathura "$@"

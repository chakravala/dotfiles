#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias cfg='/usr/bin/git --git-dir=$HOME/.config.git/ --work-tree=$HOME'

alias vimtex='vim --servername vim'

export VISUAL=vim

export EDITOR="$VISUAL"

export _JAVA_OPTIONS=-Dawt.useSystemAAFontSettings=on

export QT_AUTO_SCREEN_SCALE_FACTOR=0

export JULIA_NUM_THREADS="$(nproc)"

export MPLBACKEND="qt5agg"

alias kbd_backlight='/bin/bash /usr/local/share/kbd_backlight'

alias ls='lsd'

complete -f -X '!*.tex' vimtex

#GDK_BACKEND=x11 /usr/bin/zathura "$@"

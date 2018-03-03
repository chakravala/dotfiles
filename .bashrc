#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias cfg='/usr/bin/git --git-dir=/home/flow/.config.git/ --work-tree=/home/flow'

alias vimtex='vim --servername vim'

export _JAVA_OPTIONS=-Dawt.useSystemAAFontSettings=on

complete -f -X '!*.tex' vimtex

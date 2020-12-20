#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -al'
alias clr='clear'
alias x='exit'

export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '
export PATH="$PATH:/home/venz/.local/bin"

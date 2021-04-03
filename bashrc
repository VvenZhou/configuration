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
export PATH="$PATH:/home/vvenzhou/.local/bin"

if [ -n "$DISPLAY" ]; then
    export BROWSER=google-chrome-stable
fi

export EDITOR=vim
export QSYS_ROOTDIR="/home/vvenzhou/.softwares/intelFPGA_lite/20.1/quartus/sopc_builder/bin"



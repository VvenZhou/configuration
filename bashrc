#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -al'
alias clr='clear'
alias q='exit'

export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '
#export PATH="$PATH:/home/vvenzhou/.local/bin"

export EDITOR=nvim
export TERM='screen-256color' 

export PATH="$PATH:/home/ven/.local/share/verible/"

#alias proxyON="export http_proxy=http://127.0.0.1:8123; export https_proxy=http://127.0.0.1:8123"
#alias proxyOFF="export http_proxy=; export https_proxy="
#alias cpuHigh="sudo cpupower frequency-set -g performance"
#alias cpuLow="sudo cpupower frequency-set -g powersave"
#alias cpuShow="sudo cpupower frequency-info"
#alias lock="swaylock"
#alias btc="bluetoothctl"

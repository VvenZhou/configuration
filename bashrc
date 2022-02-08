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

# alias xrayRun="cd ~/freeland/Xray; ./xray -c ptjsons/0.json"
#xray(){
#	cd "$HOME/freeland/Xray"
#	# ./xray "-c" "pthj/$1.json"
#	if [ $1 -eq 0 ]; then
#		./xray "-c" "j_s/$2.json"
#	elif [ $1 -eq 1 ]; then 
#		./xray "-c" "hj_s/$2.json"
#	fi
#}
xray(){
	cd "$HOME/freeland/xraypt_stable/xraypt"
	./xraypt
}

#dopt(){
#	cd "$HOME/freeland/xraypt_stable"
#	./xraypt
#}

codingxraypt(){
	cd "$HOME/freeland/xraypt"
	tmux "new" "nvim xraypt.go"
}

alias proxyON="export http_proxy=http://127.0.0.1:8123; export https_proxy=http://127.0.0.1:8123"
alias proxyOFF="export http_proxy=; export https_proxy="

#alias cpuHigh="sudo cpupower frequency-set -g performance"
#alias cpuLow="sudo cpupower frequency-set -g powersave"
#alias cpuShow="sudo cpupower frequency-info"

# alias lock="swaylock"

# alias btc="bluetoothctl"

export QSYS_ROOTDIR="/home/vvenzhou/intelFPGA_lite/21.1/quartus/sopc_builder/bin"

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

export EDITOR=vim

# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#     tmux attach -t default || tmux new -s default
# fi

# # if tmux is executable, X is running, and not inside a tmux session, then try to attach.
# # if attachment fails, start a new session
# if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ]; then
#   [ -z "${TMUX}" ] && (tmux attach || tmux) >/dev/null 2>&1
# fi

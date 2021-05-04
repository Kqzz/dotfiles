#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias fetch="fm6000 -n -c blue -dog -os \"Arch Linux\" -m 4"

export PATH="$HOME/.local/bin:$PATH"

export EDITOR="nvim"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

alias config='/usr/bin/git --git-dir=/home/kqzz/.cfg/ --work-tree=/home/kqzz'

fetch

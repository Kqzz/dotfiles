#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin/:$PATH"

export EDITOR="nvim"

alias vim="nvim"
alias phi="tgpt --provider phind"
alias phii="tgpt -i --provider phind"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ls="exa"

source /usr/share/nvm/init-nvm.sh

eval "$(zoxide init bash)"

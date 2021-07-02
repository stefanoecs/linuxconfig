#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias df='df -h'
alias cp='cp -i'
#alias mv='mv -i'
alias rm='rm -i'
alias wget='wget -c'
alias g++='g++ -Werror -Wall'
#PS1='[\u@\h \W]\$ '
PS1='\[\e[0m\][\[\e[0;1;38;5;33m\]\u\[\e[0;1m\]@\[\e[0;1;38;5;33m\]\w\[\e[0m\]]\[\e[0m\]:\[\e[0m\]-\[\e[0;1;38;5;226m\]$\[\e[0m\]-\[\e[0;1;38;5;231m\]>\[\e[0m\]'
. "$HOME/.cargo/env"

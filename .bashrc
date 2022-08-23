#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\e[1;32m\u@\h\e[0;38m:\e[1;34m\w\e[0;38m\$ \e[m'

source "$XDG_CONFIG_HOME"/aliasrc
source "$XDG_CONFIG_HOME"/lscolors

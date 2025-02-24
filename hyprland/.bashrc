#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
export sddmt="/usr/share/themes"

cat ~/.cache/wal/sequences &
alias ls='ls -l --color=auto'
alias grep='grep --color=auto'

#function _update_ps1() {
#   PS1=$(powerline-shell $?)
#}
#
#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi

# PS1='\[\e[36m\]\W .sh\>\[\e[0m\] '

PS1='\[\e[36m\](\u) \[\e[36m\]\W .sh\>\[\e[0m\] '

# PS1='\u \W\\> '
neofetch
. "$HOME/.cargo/env"

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
export SDDMT="/usr/share/themes"
export FBNEOHOME="$HOME/.local/share/fbneo/"
export GITHOME="https://github.com/Baebadoobee"
export FZF_DEFAULT_OPTS="--reverse --border=bold --border=rounded --color='fg:#9595d7,bg:-1,hl:#5f87af' --color='fg+:#d7d4e3,bg+:,hl+:#5b6da5' --color='info:#d7d4e3,prompt:#d7d4e3,pointer:#ae00ff' --color='marker:#d975eb,spinner:#9595d7,header:#9595d7'"
export DOTFILES="$HOME/.dotfiles"
 
fzf_styled() {
  fzf --reverse --border=bold --border=rounded --color='fg:#9595d7,bg:-1,hl:#5f87af' --color='fg+:#d7d4e3,bg+:,hl+:#5b6da5' --color='info:#d7d4e3,prompt:#d7d4e3,pointer:#ae00ff' --color='marker:#d975eb,spinner:#9595d7,header:#9595d7' --preview "bat --color=always {}"
}
 
#cat ~/.cache/wal/sequences &
eval "$(fzf --bash)"

# Aliases
alias ls='ls -l --color=auto'
alias grep='grep --color=auto'
#alias vim='nvim'
#alias vi='/usr/bin/vim'
alias cat='bat --color=always'
alias vimrc='vim $HOME/.vimrc'
alias pvim='exec $HOME/.pushvim.ps1 &'
alias bashrc='vim $HOME/.bashrc'
alias zathurarc='vim $HOME/.zathurarc'
alias mrp='manim -p --flush_cache'
alias mra='manim -a --flush_cache'
alias tarx='tar -xvzf'

alias pin='sudo pacman -S --noconfirm --color=always'
alias prm='sudo pacman -Rns --noconfirm --color=always'
alias psu='sudo pacman -Syyu --noconfirm --color=always'
alias psy='sudo pacman -Syy --noconfirm --color=always'
alias pqg='pacman -Q | grep'

alias yin='yay -S --noconfirm --color=always'
alias yrm='yay -Rns --noconfirm --color=always'
alias ysu='yay -Syyu --noconfirm --color=always'
alias ysy='yay -Syy --noconfirm --color=always'

alias work='cd $HOME/Code; ./$(fzf_styled); exit'
alias ccache='cd $DOTFILES/hyprland; ./cleansys.sh'
alias discord='discord --enable-speech-dispatcher --no-sandbox'

PS1='\[\e[36m\](\u) \[\e[36m\]\W .sh\>\[\e[0m\] '

# PS1='\u \W\\> '
#neofetch
#. "$HOME/.cargo/env"

# Created by `pipx` on 2025-06-03 03:41:10
export PATH="$PATH:/home/bae/.local/bin"
export LIBVIRT_DEFAULT_URI="qemu:///system"

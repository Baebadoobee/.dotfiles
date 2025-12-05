!#/usr/bin/env bash

fzf_styled() {
  fzf   --reverse --border=bold --border=rounded --color='fg:#9595d7,bg:-1,hl:#5f87af' --color='fg+:#d7d4e3,bg+:,hl+:#5b6da5' --color='info:#d7d4e3,prompt:#d7d4e3,pointer:#ae00ff' --color='marker:#d975eb,spinner:#9595d7,header:#9595d7' --preview "bat --color=always {}"
}

alacritty -e 'cd $HOME/Code; ./$(fzf_styled ); exit'

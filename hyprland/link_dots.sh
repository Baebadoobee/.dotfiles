#!/usr/bin/env bash
SCRIPT_ROOT="$(dirname -- "$(realpath -- "${BASH_SOURCE[0]}")")"
ln -sf $SCRIPT_ROOT/config/* -t $HOME/.config/
ln -sf $SCRIPT_ROOT/.bashrc $HOME/.bashrc
ln -sf $SCRIPT_ROOT/.bashrc $HOME/.vimrc
sudo ln -sf $SCRIPT_ROOT/kbd-layout/br-abnt2.map.gz /usr/share/kbd/keymaps/i386/qwerty/br-abnt2.map.gz
sudo ln -sf $SCRIPT_ROOT/dnsmasq.d /etc/dnsmasq.d

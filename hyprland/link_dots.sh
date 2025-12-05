#!/usr/bin/env bash
SCRIPT_ROOT="$(dirname -- "$(realpath -- "${BASH_SOURCE[0]}")")"
ln -sf $SCRIPT_ROOT/config/* -t $HOME/.config/
ln -sf $SCRIPT_ROOT/.bashrc $HOME/.bashrc
ln -sf $SCRIPT_ROOT/.bashrc $HOME/.vimrc

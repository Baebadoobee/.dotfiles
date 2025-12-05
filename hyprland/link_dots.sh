#!/usr/bin/env bash
SCRIPT_ROOT="$(dirname -- "$(realpath -- "${BASH_SOURCE[0]}")")"
ln -f $SCRIPT_ROOT/config/* -t $HOME/.config/
ln -f $SCRIPT_ROOT/.bashrc $HOME/.bashrc
ln -f $SCRIPT_ROOT/.bashrc $HOME/.vimrc

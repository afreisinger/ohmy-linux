#!/usr/bin/env bash

if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"
fi

if [ -d "$HOME/.local/bin" ] ; then
  PATH="$PATH:$HOME/.local/bin"
fi

# executable awk programs
if [ -d "$HOME/.myawk" ]
then
  PATH="$PATH:$HOME/.myawk"
fi

# executable tmux session
if [ -d "$HOME/.mytmux/sessions" ]
then
  PATH="$PATH:$HOME/.mytmux/sessions"
fi

# IDE Path
if [ -d "$HOME/kroot/ide/vscode/bin" ]
then
  PATH="$PATH:$HOME/kroot/ide/vscode/bin"
fi

# vim config path
#* neovim uses different dir for config and data
export VIMCONFIG=~/.myvim
export VIMDATA=~/.myvim

#!/bin/bash

alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories

# Tree
if [ ! -x "$(which tree)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# Alias
alias r='source ~/.bashrc'

# Jumps
alias jf='cd /workspace/factorial/'
alias jc='cd ~/.local/share/chezmoi/'

# Devenv
alias devenv='tmuxinator start -p gitpod/.tmuxinator.yml'

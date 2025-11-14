#!/usr/bin/env bash

# ls aliases
alias ll='ls -lF --group-directories-first'
alias lla='ls -alF --group-directories-first'
alias la='ls -A --group-directories-first'
alias ld='ls -d */'
alias l='ls -CF --group-directories-first'

# use nvim instead of vim/vi
alias vim='nvim'
alias vi='nvim'

# configure emacs for use on the command line
alias e="emacsclient -tty -a ''"

# update Debian
# alias U='sudo apt update && sudo apt upgrade -y && flatpak update -y'

# update OpenSUSE
alias U='sudo systemctl stop plymouth-start.service && sudo zypper refresh && sudo -n zypper dup && sudo flatpak update -y'

# compare two directories
alias diffdir='diff -rq'

# sane defaults for bc (Bell calculator)
alias bc='bc -lq'

# force 256 colors in tmux
alias tmux='tmux -2'

# load tmux sessions
alias tmm='tmux load main'
alias tmq='tmux load aux'

#!/usr/bin/env bash

# Use this function to go up the directory tree, e.g. `up 2` will go two subdirectories up
up() {
    num=$1
    if [[ "$num" == "" ]] || [ "$num" -eq 0 ]; then
        num=1
    fi
    while [ "$num" -ne 0 ]; do
        cd ..
        num=$((num-1))
    done
}

# This function parses mc's directory hotlist and allows the user to navigate to any of the listed directories with fzf
cdsel() {
    selection="$(awk -v pattern='URL' '{for (i=0;i<=NF;i++) {if ($i==pattern) print $(i+1) }}' ~/.config/mc/hotlist | sed 's/\"//g' | fzf --height=15%  --layout=reverse)"
    cd "$selection" || return
}

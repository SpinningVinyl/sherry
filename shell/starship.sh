#!/usr/bin/env bash

function set_win_title(){
	echo -ne "\033]0; $(basename "$PWD") \007"
}
starship_precmd_user_func="set_win_title"

export STARSHIP_CONFIG="$HOME/.starship.toml"

if [[ "$TERM" != "dumb" ]]; then
    eval "$(starship init bash)"
fi

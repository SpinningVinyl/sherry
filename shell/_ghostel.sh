#!/usr/bin/env bash

# Check if we are inside Ghostel (either directly or via tmux)
if [[ "$INSIDE_EMACS" = 'ghostel' ]]; then

    # unalias o
    unalias o 2>/dev/null

    # prevent ghostel from hijacking less
    unset -f less 2>/dev/null
    unalias less 2>/dev/null
    
    # Unset any broken/empty aliases or shell remnants
    unset -f ghostel_cmd 2>/dev/null

    ghostel_cmd() {
        if [[ -n "$TMUX" ]]; then
            # tmux pass-through prefix: \033Ptmux;\033 followed by Ghostty OSC sequence
            printf "\033Ptmux;\033\033]52;e;%s\a\033\\" "$*"
        else
            # Standard Ghostel escape code when outside tmux
            printf "\033]52;e;%s\a" "$*"
        fi
    }

    o() { ghostel_cmd find-file-other-window "$@"; }
    dow() { ghostel_cmd dired-other-window "$@"; }
fi

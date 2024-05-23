# ls aliases
alias ll='ls -lF --group-directories-first'
alias lla='ls -alF --group-directories-first'
alias la='ls -A --group-directories-first'
alias ld='ls -d */'
alias l='ls -CF --group-directories-first'

# use nvim instead of vim/vi
alias vim='nvim'
alias vi='nvim'

# update Debian
alias U='sudo apt update && sudo apt upgrade -y && flatpak update -y'

# compare two directories
alias diffdir='diff -rq'

# sane defaults for bc (Bell calculator)
alias bc='bc -lq'

# useful aliases for apt-cache
alias apt-info='apt-cache showpkg'

# force 256 colors in tmux
alias tmux='tmux -2'

# load tmux sessions
alias tmm='tmuxp load main'
alias tmq='tmuxp load aux'

# Set TERM for GhosTTY
export TERM=xterm-ghostty

# Golang support
export GOPATH=~/go
export PATH=$GOPATH/bin:$PATH

# Homebrew custom path
export HOMEBREW_HOME=/opt/homebrew
export PATH=$HOMEBREW_HOME/bin:$PATH

# Setup aliases
alias ls='ls --color'
alias lf='ls -F'
alias lt='lf -lrt'
alias lg='lazygit'
alias ld='lazydocker'

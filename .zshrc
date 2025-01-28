# Golang support
export GOPATH=~/go
export PATH=$GOPATH/bin:$PATH

# Homebrew custom path
export HOMEBREW_HOME=/opt/homebrew
export PATH=$HOMEBREW_HOME/sbin:$HOMEBREW_HOME/bin:$PATH

# Setup aliases
alias ls='ls --color'
alias lf='ls -F'
alias lt='lf -lrt'
alias lg='lazygit'
alias ld='lazydocker'
alias icat='kitten icat'
alias upbrew='brew update && brew upgrade && brew doctor'

# Executing EDITOR with custom font
export EDITOR=vim
v() {
	printf '\e]710;%s\007' "FiraCode Nerd Font Mono"
	eval $EDITOR "$@"
	printf '\e]710;%s\007' "FiraMono Nerd Font Mono"
}


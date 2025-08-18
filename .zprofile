# Setup shell
autoload -Uz compinit
compinit

# Use Emacs binding
bindkey -e

# Set configuration directory like in Linux
export XDG_CONFIG_HOME="${HOME}/.config"

# Theme
export ZSH_THEME=avit

# Editor
export EDITOR=vim

# Less setting
export LESS="-EXR"

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

### Functions ###
# netstat -p substitution
macns() {
	netstat -Wantlv | \
		grep -w LISTEN | \
			awk 'BEGIN{
				print "PROTO BIND CONN PID PROC"
				print "----- ---- ---- --- ----"
			};
			{"ps -o comm= -p " $11 | getline proc; print $1, $4, $5, $11, proc}' | \
				column -t
}

# Executing EDITOR with custom font
v() {
	printf '\e]710;%s\007' "FiraCode Nerd Font Mono"
	eval $EDITOR "$@"
	printf '\e]710;%s\007' "FiraMono Nerd Font Mono"
}


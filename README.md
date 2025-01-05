# Dotfiles
Dot files repository to version control and manage centrally maintained configuration files.

## Introduction
This repository is containing various configuration files and directories used to store custom configuration files for various Unix / Linux / MacOS utilities and application. It uses [GNU Stow](https://www.gnu.org/software/stow/) software to provide dynamic symlinks when installed on the client machine.

## Software dependencies

- Git
- GNU Stow

## Installation
- Insure software dependencies are installed
```sh
brew install git stow
```

- Clone dotfiles repo
```sh
cd $HOME && git clone git@github.com:caelifer/dotfiles.git

```

- Install simlinks
```sh
# Create $HOME/.config directory if none exist
test -d ~/.config || mkdir -p ~/.config
(cd ~/dotfiles && stow --verbose=2 .)

```

***

## Specific software notes

### Brew

- To update list of installed brew packages, run the following command:
```sh
cd ~/dotfiles && brew bundle dump
```

- To (re)install brew packages from the list, run:
```sh
cd ~/dotfiles && brew bundle
```

### Ghostty
Ghostty is a new software, so it is only available at this time via Brew cask. To install, run this command:
```sh
brew install --cask ghostty
```


### Tmux
To install / update TPM modules, start a new tmux session and type `<Ctrl-A> <shift>I`.


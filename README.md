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
stow --verbose=3

```

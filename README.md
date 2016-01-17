# README
These are my dotfiles.  There are many like them but these are mine.

## Contents
I'm just getting started getting these organized.  But so far it installs and configures 
[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), [vim-pathogen](https://github.com/tpope/vim-pathogen) and a number of Vim plugins 
via submodules (gasp!).

## Installation
Installation should go something like this:
* `git clone --recursive https://github.com/twbecker/dotfiles ~/.dotfiles`
* `cd ~/.dotfiles; ./bootstrap`

## Usage
I use both Linux and OS X, so there are a couple of facilities to make customizations that are local to a specific machine:
* Machine specific zsh commands can be placed in custom/local.zsh.
* Machine specific git settings can be placed in ~/.gitlocalconfig. 

## Upgrading submodules
`git submodule update --remote --merge`
`git add -A`
`git commit`

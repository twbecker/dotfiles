# README
These are my dotfiles.  There are many like them but these are mine.

## Contents
When I first switched to Zsh, I used [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh). It's a great project,
but it's a bit bloated, and I got tired of not knowing how my shell worked. So I rolled my own and am going framework-less for now.
I still have a number of submodules for my theme, [powerlevel10k](https://github.com/romkatv/powerlevel10k) and for a number of vim plugins 
managed by [vim-pathogen](https://github.com/tpope/vim-pathogen).

## Installation
Installation should go something like this:
* `git clone --recursive https://github.com/twbecker/dotfiles ~/.dotfiles`
* `cd ~/.dotfiles; ./bootstrap`

## Usage
I use both Linux and OS X, so there are a couple of facilities to make customizations that are local to a specific machine:
* Machine specific zsh commands can be placed in .dotfiles/zsh/local.zsh.
* Machine specific git settings can be placed in ~/.gitlocalconfig. 

## Upgrading submodules
`git submodule update --remote --merge`
`git add -A`
`git commit`

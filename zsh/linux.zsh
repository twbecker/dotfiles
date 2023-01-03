eval $(dircolors)
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

export SYSTEMD_LESS=FRXMK # Remove S to allow line wrapping
alias ls='ls --color=auto' # -G on OSX :/

source $DOTFILES/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $DOTFILES/zsh-history-substring-search/zsh-history-substring-search.zsh

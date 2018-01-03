eval $(dircolors)
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

alias ls='ls --color=auto' # -G on OSX :/

source $DOTFILES/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $DOTFILES/zsh-history-substring-search/zsh-history-substring-search.zsh

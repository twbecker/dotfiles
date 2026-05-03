eval $(/opt/homebrew/bin/brew shellenv)
eval "$(zsh-patina activate)"
source $HOMEBREW_PREFIX/share/zsh-history-substring-search/zsh-history-substring-search.zsh

zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export PATH=$PATH:~/Library/Application\ Support/JetBrains/Toolbox/scripts

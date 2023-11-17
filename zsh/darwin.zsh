# Brew installed locations
if [[ $(uname -m) = "arm64" ]]; then
    BREW_HOME=/opt/homebrew
else
    BREW_HOME=/usr/local
fi
eval $($BREW_HOME/bin/brew shellenv)
fpath=($BREW_HOME/share/zsh/site-functions $fpath)
source $BREW_HOME/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $BREW_HOME/share/zsh-history-substring-search/zsh-history-substring-search.zsh
[[ -e "${HOME}/.iterm2_shell_integration.zsh" ]] && source "${HOME}/.iterm2_shell_integration.zsh"

zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

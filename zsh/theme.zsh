BASE16_SHELL=$HOME/.dotfiles/base16-shell/
[[ -n $PS1 ]] && [[ -s $BASE16_SHELL/profile_helper.sh ]] && source "$BASE16_SHELL/profile_helper.sh"

source ~/.dotfiles/zsh/p10k.zsh
source ~/.dotfiles/powerlevel10k/powerlevel10k.zsh-theme

HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND=bg=magenta,fg=black
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND=bg=red,fg=black

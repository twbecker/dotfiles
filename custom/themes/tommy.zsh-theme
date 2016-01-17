# Modified sorin theme to make better use of RPROMPT, and show full CWD

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED=" ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED=" ✹"
ZSH_THEME_GIT_PROMPT_DELETED=" ✖"
ZSH_THEME_GIT_PROMPT_RENAMED=" ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED=" ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" ✭"

RPROMPT='$(git_prompt_info)$(git_prompt_status)'

if [[ "$TERM" != "dumb" ]] && [[ "$DISABLE_LS_COLORS" != "true" ]]; then
  MODE_INDICATOR="%{$fg_bold[red]%}❮%{$reset_color%}%{$fg[red]%}❮❮%{$reset_color%}"
  
  PROMPT='%{$fg[cyan]%}%~ %(!.%{$fg_bold[red]%}#.%(?.%{$fg_bold[green]%}.%{$fg_bold[red]%})❯)%{$reset_color%} '

  if [[ -n $SSH_CONNECTION ]]; then
    PROMPT='%{$fg[red]%}%m%{$reset_color%}:$PROMPT'
  fi
  ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}"
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

  RPROMPT="$RPROMPT%{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}$ZSH_THEME_GIT_PROMPT_ADDED"
  ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}$ZSH_THEME_GIT_PROMPT_MODIFIED"
  ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}$ZSH_THEME_GIT_PROMPT_DELETED"
  ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}$ZSH_THEME_GIT_PROMPT_RENAMED"
  ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}$ZSH_THEME_GIT_PROMPT_UNMERGED"
  ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}$ZSH_THEME_GIT_PROMPT_UNTRACKED"
else 
  MODE_INDICATOR="❮❮❮"
  PROMPT='%~ %(!.#.❯) '
  if [[ -n $SSH_CONNECTION ]]; then
    PROMPT='%m:$PROMPT'
  fi
fi


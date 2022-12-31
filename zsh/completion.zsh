zmodload zsh/complist
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' format '%B%F{blue}--- %d ---%b%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt '%B%F{blue}At %p: Hit TAB for more, or the character to insert%b%f'
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select
zstyle ':completion:*' prompt 'Corrected %e errors'
zstyle ':completion:*' select-prompt '%B%F{blue}Scrolling active: %l%b%f'
zstyle ':completion:*' verbose true
zstyle :compinstall filename '~/.zsh/completion.zsh'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Keep directories and files separated
zstyle ':completion:*' list-dirs-first true

zstyle ':completion::complete:*' use-cache 1

# Show full command line on process completion
zstyle ':completion:*:*:*:*:processes' command 'ps -U $USER -o pid,user,cmd'

if (( $+commands[op] )); then
  eval "$(op completion zsh)"; compdef _op op
fi

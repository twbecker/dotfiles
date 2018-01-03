# Use vi-mode, but keep familiar emacs bindings (^P,^N, etc)
# Also replace history navigation with substring search equivalents
bindkey -v
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey '^R' history-incremental-search-backward
bindkey '^A' beginning-of-line
bindkey '^B' backward-char
bindkey '^D' delete-char-or-list
bindkey '^E' end-of-line
bindkey '^F' forward-char
bindkey '^I' expand-or-complete-prefix # Only complete from the left side
bindkey '^K' kill-line
bindkey '^?' backward-delete-char
bindkey '\e.' insert-last-word
bindkey '^[[Z' undo  # Shift-tab undoes completion

# And in command mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
bindkey -M vicmd '^P' history-substring-search-up
bindkey -M vicmd '^N' history-substring-search-down
bindkey -M vicmd '^R' history-incremental-search-backward
bindkey -M vicmd '^A' beginning-of-line
bindkey -M vicmd '^B' backward-char
bindkey -M vicmd '^D' delete-char-or-list
bindkey -M vicmd '^E' end-of-line
bindkey -M vicmd '^F' forward-char
bindkey -M vicmd '\e.' insert-last-word
bindkey -M vicmd '^I' expand-or-complete-prefix

bindkey -M menuselect '\e' vi-cmd-mode
bindkey -M menuselect '^[[Z' reverse-menu-complete # Set to avoid inheriting the undo binding above

#autoload -Uz edit-command-line
#zle -N edit-command-line
#bindkey -M vicmd 'v' edit-command-line

# Complete only from the left of the cursor
#bindkey '^i' expand-or-complete-prefix

KEYTIMEOUT=25

# Updates editor information when the keymap changes.
function zle-keymap-select() {
  zle reset-prompt
  zle -R
}

zle -N zle-keymap-select

sudo-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == sudo\ * ]]; then
        LBUFFER="${LBUFFER#sudo }"
    elif [[ $BUFFER == $EDITOR\ * ]]; then
        LBUFFER="${LBUFFER#$EDITOR }"
        LBUFFER="sudoedit $LBUFFER"
    elif [[ $BUFFER == sudoedit\ * ]]; then
        LBUFFER="${LBUFFER#sudoedit }"
        LBUFFER="$EDITOR $LBUFFER"
    else
        LBUFFER="sudo $LBUFFER"
    fi
}
zle -N sudo-command-line
# Defined shortcut keys: [Esc] [Esc]
bindkey "\e\e" sudo-command-line

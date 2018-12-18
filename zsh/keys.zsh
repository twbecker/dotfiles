# Replace history navigation with substring search equivalents
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey '^R' history-incremental-search-backward

bindkey -M menuselect '^[[Z' reverse-menu-complete

# Complete only from the left of the cursor
#bindkey '^i' expand-or-complete-prefix

KEYTIMEOUT=25

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

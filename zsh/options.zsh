setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

setopt extended_history
setopt hist_ignore_all_dups
setopt hist_verify

setopt interactive_comments

setopt extended_glob

set -o no_auto_remove_slash
# https://github.com/robbyrussell/oh-my-zsh/commit/ed484dfaf63c6d8789b2bd2e952a07bbbb9ad330
set -o cdable_vars
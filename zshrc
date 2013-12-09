# -------------------------------------------
# file: ~/.zshrc
# https://github.com/robbyrussell/oh-my-zsh
# author: serdotlinecho
# vim:fdm=marker:
# -------------------------------------------

# ----- oh-my-zsh settings {{{
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="minimal"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(fasd git vi-mode colored-man zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# }}}
# ----- alias, function and path {{{
[ -f $HOME/.zsh/zshrc.alias ] && . $HOME/.zsh/zshrc.alias
[ -f $HOME/.zsh/zshrc.function ] && . $HOME/.zsh/zshrc.function
[ -e $HOME/.zsh/notifyosd.zsh ] && . $HOME/.zsh/notifyosd.zsh

PATH=$PATH:/home/serdotlinecho/dotfiles/scripts

# ccache
export CCACHE_DIR="/home/serdotlinecho/.ccache"
export PATH="/usr/lib/ccache/bin/:$PATH"

# }}}
# ----- vi-mode {{{
# add missing vi hotkeys
# fixes backspace deletion issues
# http://zshwiki.org/home/zle/vi-mode
# bindkey -a u undo
bindkey -a '^R' redo
bindkey '^H' backward-delete-char

# # history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
bindkey -M viins '^s' history-incremental-pattern-search-backward
bindkey -M vicmd '^s' history-incremental-pattern-search-backward

# }}}

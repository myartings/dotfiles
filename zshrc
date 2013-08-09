# ---------------------
# Requires Oh-my-zsh!!!
# file: ~/.zshrc
# author: serdotlinecho
# ---------------------

# alias and funtion
[ -f ~/.zshrc.alias ] && source ~/.zshrc.alias
[ -f ~/.zshrc.function ] && source ~/.zshrc.function

# color coreutils
eval $(dircolors -b ~/.dir_colors)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# theme
ZSH_THEME="minimal"

# plugins
# ~/.oh-my-zsh/plugins/
plugins=(git vi-mode fasd colored-man) 

source $ZSH/oh-my-zsh.sh

# default editor
export EDITOR="vim"

# uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# system-independent paths
PATH=$PATH:/home/serdotlinecho/dotfiles/scripts

# enable vim mode on commmand line
bindkey -v
#
# no delay entering normal mode
# https://coderwall.com/p/h63etq
# https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
KEYTIMEOUT=1
#
# # show vim status
# # http://zshwiki.org/home/examples/zlewidgets
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# add missing vim hotkeys
# fixes backspace deletion issues
# http://zshwiki.org/home/zle/vi-mode
bindkey -a u undo
bindkey -a '^R' redo
bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char

# history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
bindkey -M viins '^s' history-incremental-search-backward
bindkey -M vicmd '^s' history-incremental-search-backward

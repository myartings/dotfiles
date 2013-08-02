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
ZSH_THEME="gallois"

# plugins
# ~/.oh-my-zsh/plugins/
plugins=(git fasd systemd colored-man zsh-syntax-highlighting) 


source $ZSH/oh-my-zsh.sh

# default editor
export EDITOR="vim"

# uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# system-independent paths
PATH=$PATH:/home/serdotlinecho/dotfiles/scripts

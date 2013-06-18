# Requires Oh-my-zsh!!!

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="nicoulaj"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git colored-man zsh-syntax-highlighting) 

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#
# Start tmux on every shell login
# If not running interactively, do not do anything
#[[ $- != *i* ]] && return
#[[ -z "$TMUX" ]] && exec tmux

# aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias tmuxrc="vim ~/.tmux.conf"
alias cp="acp -g"
alias mv="amv -g"
alias scb="sudo setpci -s 00:02.0 F4.B=70"
alias nmcon="nmcli con up id"


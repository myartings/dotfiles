# ---------------------
# Requires Oh-my-zsh!!!
# file: ~/.zshrc
# author: serdotlinecho
# ---------------------

##### path #####
ZSH=$HOME/.oh-my-zsh
export PATH=$PATH:/home/serdotlinecho/dotfiles/scripts

##### theme ##### 
# https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="nicoulaj"

##### plugins #####
# ~/.oh-my-zsh/plugins/
plugins=(git colored-man zsh-syntax-highlighting) 

##### source #####
source $ZSH/oh-my-zsh.sh

##### aliases #####
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias tmuxrc="vim ~/.tmux.conf"
alias cp="acp -g"
alias mv="amv -g"
alias scb="sudo setpci -s 00:02.0 F4.B=70"
alias nmcon="nmcli con up id"

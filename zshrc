# ---------------------
# Requires Oh-my-zsh!!!
# file: ~/.zshrc
# author: serdotlinecho
# ---------------------

# path
ZSH=$HOME/.oh-my-zsh
export PATH=$PATH:/home/serdotlinecho/dotfiles/scripts

# theme
# https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="nicoulaj"

# plugins
# ~/.oh-my-zsh/plugins/
plugins=(git colored-man zsh-syntax-highlighting) 

# source
source $ZSH/oh-my-zsh.sh

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias tmuxrc="vim ~/.tmux.conf"
alias cp="acp -g"
alias mv="amv -g"
alias scb="sudo setpci -s 00:02.0 F4.B=70"
alias wifilist="nmcli -p dev wifi"
alias nmup="nmcli -p con up id"
alias nmdown="nmcli -p con down id"
alias wifion="nmcli nm wifi on"
alias wifioff="nmcli nm wifi off"
alias sleep="systemctl suspend"

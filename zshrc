# ---------------------
# Requires Oh-my-zsh!!!
# file: ~/.zshrc
# author: serdotlinecho
# ---------------------

# path
ZSH=$HOME/.oh-my-zsh
PATH=$PATH:/home/serdotlinecho/dotfiles/scripts

# theme
# https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="nicoulaj"

# plugins
# ~/.oh-my-zsh/plugins/
plugins=(git systemd colored-man zsh-syntax-highlighting) 

# source
source $ZSH/oh-my-zsh.sh

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias tmuxrc="vim ~/.tmux.conf"
alias cp="acp -g"   # cp with progress bar
alias mv="amv -g"   # mv with progress bar
alias scb="sudo setpci -s 00:02.0 F4.B=70"  # set screen brightness to 70
alias wifilist="nmcli -p dev wifi"  # list available wifi  
alias nmup="nmcli -p con up id"     # connect to wifi
alias nmdown="nmcli -p con down id" # disconnect from wifi 
alias wifion="nmcli nm wifi on"     # turn on wifi
alias wifioff="nmcli nm wifi off"   # turn off wifi
alias sleep="systemctl suspend"     # suspend the machine
alias youtube-viewer='youtube-viewer -C -4 --results=10' # color, fullscreen, 480p, number of results

# youtube-viewer listen to music without video
function youtube-music() {
    youtube-viewer -n $@ ;
}
            

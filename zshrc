# ---------------------
# Requires Oh-my-zsh!!!
# file: ~/.zshrc
# author: serdotlinecho
# ---------------------

# path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# theme
ZSH_THEME="nicoulaj"

# plugins
# ~/.oh-my-zsh/plugins/
plugins=(git systemd colored-man zsh-syntax-highlighting) 

source $ZSH/oh-my-zsh.sh

# default editor
export EDITOR=/usr/bin/vim

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# System-independent paths
PATH=$PATH:/home/serdotlinecho/dotfiles/scripts

# aliases
alias ohmyzsh="vim ~/.oh-my-zsh"
alias cp="acp -g"   # cp with progress bar
alias mv="amv -g"   # mv with progress bar
alias scb="sudo setpci -s 00:02.0 F4.B=70"  # set screen brightness to 70
alias wifilist="nmcli -p dev wifi"  # list available wifi  
alias nmup="nmcli -p con up id"     # connect to wifi
alias nmdown="nmcli -p con down id" # disconnect from wifi 
alias wifion="nmcli nm wifi on"     # turn on wifi
alias wifioff="nmcli nm wifi off"   # turn off wifi
alias sleep="systemctl suspend"     # suspend the machine
alias youtube-viewer="youtube-viewer -C" # color, 480p, number of results

# configuration
cfg-zshrc() { $EDITOR ~/.zshrc ;}
cfg-vimrc() { $EDITOR ~/.vimrc ;}
cfg-xresource() { $EDITOR ~/.Xresources ;}
cfg-xinitrc() { $EDITOR ~/.xinitrc ;}
cfg-i3conf() { $EDITOR ~/.i3/config ;}

# capture rtmp links
sniff-begin() { 
    sudo iptables -t nat -A OUTPUT -p tcp --dport 1935 -j REDIRECT ;
}

sniff-capture-rtmpsrv() { 
    rtmpsrv ;
}

sniff-end() { 
    sudo iptables -t nat -D OUTPUT -p tcp --dport 1935 -j REDIRECT ;
}

# play youtube video with youtube-viewer and mplayer
ytv() { 
    youtube-viewer -3 $@ ;
}

# play youtube video with yturl and mplayer
yt() {
    mplayer "$(yturl "$@")"
}

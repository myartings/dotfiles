#!/bin/bash
# 
# file: ~/.xinitrc

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# merge in defaults
[[ -f "$HOME/.Xresources" ]] && xrdb -merge "$HOME/.Xresources"

# restore background
eval $(cat ~/.fehbg)

exec i3

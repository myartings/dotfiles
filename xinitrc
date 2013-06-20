#!/bin/bash
# 
# file: ~/.xinitrc

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# load .Xresources
[[ -f "$HOME/.Xresources" ]] && xrdb -merge "$HOME/.Xresources"

# wallpaper set command
eval $(cat ~/.fehbg)

# autostart applications
/usr/bin/urxvtd -q -o -f &

# i3wm
exec i3

#!/bin/sh
#################################################
# file: ~/.xinitrc
# author: serdotlinecho
# vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=sh:
#################################################

# Source scripts in /etc/X11/xinit/xinitrc.d/
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# load Xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xsetroot -cursor_name left_ptr &

# set background
sh $HOME/.fehbg

# start urxvt terminal daemon
urxvtd -q -o -f &

# start music player daemon
mpd ~/.mpd/mpd.conf &

# screen locker
xautolock &

# launch wm
exec i3


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
xrdb -merge ~/.Xresources

# set wallpaper 
imlibsetroot -s f ~/Pictures/archlinux_blue.jpg &

# start urxvt terminal daemon
urxvtd -q -o -f &

# start music player daemon
(mpd ~/.mpd/mpd.conf && mpc pause) &

# screen locker
xautolock &

# launch WM/DE
# exec startxfce4
exec i3



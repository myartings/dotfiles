#!/bin/sh
#################################################
# file: ~/.xinitrc
# author: serdotlinecho
# vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=sh:
#################################################

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# load Xresources
[[ -f $HOME/.Xresources ]] && xrdb -merge $HOME/.Xresources

xset +fp /usr/share/fonts/local
xset fp rehash

# set wallpaper
sh $HOME/.fehbg

# set cursor
xsetroot -cursor_name left_ptr &

# start terminal emulation daemon
urxvtd -q -o -f &

# hide cursor on inactivity
/usr/bin/unclutter -noevents -idle 5 &

# start music player daemon
mpd $HOME/.mpd/mpd.conf &

# screen locker
xautolock &

# launch wm
exec i3


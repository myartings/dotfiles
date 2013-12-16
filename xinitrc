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

# load up Xresources
[[ -f $HOME/.Xresources && -r ~/.Xresources ]] && xrdb -merge $HOME/.Xresources

xset +fp /usr/share/fonts/local
xset fp rehash

# load a background image
[[ -f ~/.fehbg && -r ~/.fehbg ]] && { sh ~/.fehbg & }

# set the cursor
xsetroot -cursor_name left_ptr &

# start a urxvt daemon
hash urxvtd 2>/dev/null && urxvtd -q -o -f &

# Start compositing manager
hash xcompmgr 2>/dev/null && { xcompmgr -c & }

# start a screen locker
xautolock &

# launch wm
exec i3


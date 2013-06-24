#!/bin/sh
# 
# file: ~/.xinitrc
# author: serdotlinecho

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# source Xresources
xrdb -merge ~/.Xresources

# wallpaper set command
sh $HOME/.fehbg &

# start urxvt terminal daemon
/usr/bin/urxvtd -q -o -f &

# automounting
/usr/bin/udiskie -s &

# conky
(sleep 10; conky -q) &

# i3wm
exec i3

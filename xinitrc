# ------------------------
# file: ~/.xinitrc
# author: serdotlinecho
# ------------------------

#!/bin/sh

# load resources
xrdb -merge ~/.Xresources

# wallpaper set command
sh $HOME/.fehbg &

# start urxvt terminal daemon
/usr/bin/urxvtd -q -o -f &

# start pulse audio
start-pulseaudio-x11 &

# start music player daemon
mpd ~/.mpd/mpd.conf &

# automounting usb devices
/usr/bin/udiskie -s &

# screen locker
/usr/bin/xautolock &

# i3wm
exec i3

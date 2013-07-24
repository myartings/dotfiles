# ------------------------
# file: ~/.xinitrc
# author: serdotlinecho
# ------------------------

#!/bin/sh

# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# load resources
xrdb -load ~/.Xresources

# wallpaper set command
sh $HOME/.fehbg &

# start urxvt terminal daemon
/usr/bin/urxvtd -q -o -f &

# start pulse audio
#start-pulseaudio-x11 &

# start music player daemon
mpd ~/.mpd/mpd.conf &

# automounting usb devices
/usr/bin/udiskie -s &

# screen locker
/usr/bin/xautolock &

# i3 session
exec i3

# ---------------------
# file: ~/.xinitrc
# author: serdotlinecho
# ---------------------

# source Xresources
xrdb -merge ~/.Xresources

# wallpaper set command
sh $HOME/.fehbg &

# start urxvt terminal daemon
/usr/bin/urxvtd -q -o -f &

# automounting
/usr/bin/udiskie -s &

# i3wm
exec i3

#!/bin/bash
# source: https://github.com/oblique/configs/blob/master/.i3/bin/exit_menu.sh

while [ "$select" != "YES" -a "$select" != "NO" ]; do
    select=$(echo -e 'YES\nNO' | dmenu -y 250 -nb '#161616' -nf '#bfb5b5' -sb '#dc322f' -sf '#000000' -fn 'Droid Sans Mono Dotted-12:normal' -i -p "Do you really want to exit i3? This will end your X session.")
    [ -z "$select" ] && exit 0
done
[ "$select" = "NO" ] && exit 0
i3-msg exit

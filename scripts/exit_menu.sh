#!/bin/bash
# source: https://github.com/oblique/configs/blob/master/.i3/bin/exit_menu.sh

while [ "$select" != "YES" -a "$select" != "NO" ]; do
    select=$(echo -e 'YES\nNO' | dmenu -y 270 -o '0.8' -dim '0.3' -nb '#232323' -nf '#ffffff' -sb '#DC322F' -sf '#000000' -fn 'Droid Sans-18:bold' -i -p "Do you really want to exit i3? This will end your X session.")
    [ -z "$select" ] && exit 0
done
[ "$select" = "NO" ] && exit 0
i3-msg exit

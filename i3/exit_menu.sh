#!/bin/bash

while [ "$select" != "YES" -a "$select" != "NO" ]; do
    select=$(echo -e 'YES\nNO' | dmenu -y 250 -nb '#2b2b2b' -nf '#bfb5b5' -sb '#f00060' -sf '#000000' -fn '-*-*-medium-r-normal-*-*-*-*-*-*-100-*-*' -i -p "Do you really want to exit i3? This will end your X session.")
    [ -z "$select" ] && exit 0
done
[ "$select" = "NO" ] && exit 0
i3-msg exit

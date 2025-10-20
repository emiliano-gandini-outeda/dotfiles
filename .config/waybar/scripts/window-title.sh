#!/bin/bash
while true; do
    title=$(hyprctl activewindow | grep "title:" | sed 's/.*title: //')
    [ -z "$title" ] && title="Desktop"
    clean_title=$(echo "$title" | sed 's/ - .*//; s/ — .*//; s/: .*//; s/ *$//')
    echo " $clean_title"
done


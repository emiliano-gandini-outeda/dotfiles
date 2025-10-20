#!/bin/bash

# Function to print the focused window title
print_title() {
    title=$(hyprctl activewindow | grep "title:" | sed 's/.*title: //')
    [ -z "$title" ] && title="Desktop"
    clean_title=$(echo "$title" | sed 's/ - .*//; s/ — .*//; s/: .*//; s/ *$//')
    echo " $clean_title"
}

# Print the initial title
print_title

# Subscribe to Hyprland events
hyprctl subscribe | while read -r line; do
    # Only react to active window changes
    if [[ "$line" == *"activewindow"* ]]; then
        print_title
    fi
done


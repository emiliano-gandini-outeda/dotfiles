#!/usr/bin/env bash
# Script to backup Alacritty, Fish, and Hyprland configs

# Destination folder for backup
BACKUP_DIR="$HOME/config_backup"
mkdir -p "$BACKUP_DIR"

# Copy Alacritty config
if [ -d "$HOME/.config/alacritty" ]; then
    cp -r "$HOME/.config/alacritty" "$BACKUP_DIR/"
fi

# Copy Fish config
if [ -d "$HOME/.config/fish" ]; then
    cp -r "$HOME/.config/fish" "$BACKUP_DIR/"
fi

# Copy Hyprland config (all of it)
if [ -d "$HOME/.config/hypr" ]; then
    cp -r "$HOME/.config/hypr" "$BACKUP_DIR/"
fi

echo "Backup complete in $BACKUP_DIR"


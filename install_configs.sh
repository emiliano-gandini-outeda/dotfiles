#!/usr/bin/env bash
# Script to restore Alacritty, Fish, and Hyprland configs

BACKUP_DIR="$HOME/config_backup"

# Install dependencies if needed
sudo pacman -S --needed fish -y

# Restore Alacritty
if [ -d "$BACKUP_DIR/alacritty" ]; then
    mkdir -p "$HOME/.config"
    cp -r "$BACKUP_DIR/alacritty" "$HOME/.config/"
fi

# Restore Fish
if [ -d "$BACKUP_DIR/fish" ]; then
    mkdir -p "$HOME/.config"
    cp -r "$BACKUP_DIR/fish" "$HOME/.config/"
fi

# Restore Hyprland
if [ -d "$BACKUP_DIR/hypr" ]; then
    mkdir -p "$HOME/.config"
    cp -r "$BACKUP_DIR/hypr" "$HOME/.config/"
fi

echo "Configs restored! You may need to log out and log back in."


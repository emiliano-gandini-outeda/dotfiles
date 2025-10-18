#!/usr/bin/env bash
# Script to restore Alacritty, Fish, and Hyprland configs, replacing current configs
# and setting Fish as the default shell

BACKUP_DIR="$HOME/config_backup"

# Install dependencies if needed
sudo pacman -S --needed alacritty fish hyprland -y

# Ensure config directory exists
mkdir -p "$HOME/.config"

# Restore Alacritty (replace existing)
if [ -d "$BACKUP_DIR/alacritty" ]; then
    rm -rf "$HOME/.config/alacritty"
    cp -r "$BACKUP_DIR/alacritty" "$HOME/.config/"
fi

# Restore Fish (replace existing)
if [ -d "$BACKUP_DIR/fish" ]; then
    rm -rf "$HOME/.config/fish"
    cp -r "$BACKUP_DIR/fish" "$HOME/.config/"
fi

# Restore Hyprland (replace existing)
if [ -d "$BACKUP_DIR/hypr" ]; then
    rm -rf "$HOME/.config/hypr"
    cp -r "$BACKUP_DIR/hypr" "$HOME/.config/"
fi

# Set Fish as default shell
if ! grep -q "$(which fish)" /etc/shells; then
    echo "$(which fish)" | sudo tee -a /etc/shells
fi
chsh -s "$(which fish)"

echo "Configs restored and Fish set as default shell. Please log out and log back in."


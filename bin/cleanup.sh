#!/bin/bash

# Step 3:
if [ -f "$HOME/.nanorc" ]; then
    rm "$HOME/.nanorc"
    echo "Removed .nanorc file."
else
    echo ".nanorc file does not exist."
fi

# Step 4:
sed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' "$HOME/.bashrc"
echo "Removed 'source ~/.dotfiles/etc/bashrc custom' from .bashrc."

# Step 5:
if [ -d "$HOME/.TRASH" ]; then
    rm -rf "$HOME/.TRASH"
    echo "Removed .TRASH directory."
else
    echo ".TRASH directory does not exist."
fi

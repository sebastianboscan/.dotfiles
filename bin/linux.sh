#!/bin/bash

# Step 3:
if [ "$(uname)" != "Linux" ]; then
    echo "Error: This script can only be run on Linux." >> linuxsetup.log
    exit 1
fi

# Step 4:
if [ ! -d "$HOME/.TRASH" ]; then
    mkdir "$HOME/.TRASH"
    echo "Created .TRASH directory in $HOME." >> linuxsetup.log
else
    echo ".TRASH directory already exists in $HOME." >> linuxsetup.log
fi

# Step 5:
if [ -f "$HOME/.nanorc" ]; then
    mv "$HOME/.nanorc" "$HOME/.bup_nanorc"
    echo "The current .nanorc file was renamed to .bup_nanorc." >> linuxsetup.log
fi

# Step 6:
if [ -f "/etc/nanorc" ]; then
    cp /etc/nanorc "$HOME/.nanorc"
    echo "The contents of /etc/nanorc were copied to $HOME/.nanorc." >> linuxsetup.log
else
    echo "Error: /etc/nanorc does not exist." >> linuxsetup.log
fi

# Step 7:
echo "source ~/.dotfiles/etc/bashrc custom" >> "$HOME/.bashrc"
echo "Added 'source ~/.dotfiles/etc/bashrc custom' to the end of $HOME/.bashrc." >> linuxsetup.log


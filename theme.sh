#!/bin/bash

WALLPAPERS_DIR=$HOME/wallpapers
LAST_IMG_PATH=$(cat ~/.last_wallpaper)

# Select a random image
while true; do
    IMG_NAME=$(ls $WALLPAPERS_DIR | shuf -n 1)
    IMG_PATH=$WALLPAPERS_DIR/$IMG_NAME
    if [ "$IMG_PATH" != "$LAST_IMG_PATH" ]; then
        break
    fi
done

# Set the wallpaper
wal -i $IMG_PATH -n
gradience-cli apply -p ~/.cache/wal/pywal_gtk_theme.json --gtk both
pywalfox update
swaync-client -R
swaync-client -rs

# Store the current image path
echo "$IMG_PATH" > ~/.last_wallpaper

swww img $IMG_PATH --transition-type any --transition-fps 144
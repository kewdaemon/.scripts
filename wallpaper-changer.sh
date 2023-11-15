#!/bin/bash



WALLPAPER_DIR=~/wallpapers
WALLPAPER_SELECT=$(ls ~/wallpapers | dmenu -l 10; sleep 0.001)

update_idesk() {
    killall idesk 
    feh --bg-fill $WALLPAPER_DIR/[ 
    idesk &
    sleep 0.00001
}

feh --bg-fill $WALLPAPER_DIR/$WALLPAPER_SELECT
$(update_idesk) 



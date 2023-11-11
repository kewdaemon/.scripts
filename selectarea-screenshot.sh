dir=~/Photos/Screenshots/Selected
photo=$dir/$(date -u +"%Y%d%m-%H%M%S")-selected.jpg
shot=$(scrot -q 100 -s -b --freeze --select $photo)

if notify-send "Your screenshot was uploaded in" "$photo" -i $photo; then
    pcmanfm $dir
fi
 

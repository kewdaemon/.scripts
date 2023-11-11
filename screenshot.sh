dir=~/Photos/Screenshots
# You can specify own directory for moving pics
photo=$dir/$(date -u +"%Y%d%m-%H%M%S").jpg

# this script take your screen in high quality
shot=$(scrot -q 100 $photo)

# if you have dunst, you can make a notify where is your picture placed
notify-send -i $photo "Your screen" "$photo"


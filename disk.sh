disk=$(df -m /dev/sda3 | grep /dev/ | awk '{print ($3 / 1000)} ')
echo "  $disk"GB

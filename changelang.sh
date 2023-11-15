#!/bin/bash

COMMAND=$(xset -q | grep LED | awk '{ print $10 }')

case "$COMMAND" in

 "00000000"|"00000001") LAYOUT="EN" 
                        FLAG="/home/drew/.icons/uk.svg"
 #                       notify-send -t 1000 -i $FLAG "You have changed to $LAYOUT layout" &2> /dev/null ;;

 "00001000"|"00001001") LAYOUT="RU" 
                        FLAG="/home/drew/.icons/russia.svg"
#                        notify-send -t 100 -i $FLAG "You have changed to $LAYOUT layout" &2> /dev/null ;;
                         
  *) LAYOUT="??" ;;

esac

echo $LAYOUT 

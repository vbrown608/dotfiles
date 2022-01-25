#!/bin/bash

# https://github.com/vivien/i3blocks
# https://gnomepomodoro.org/
# https://github.com/kantord/i3-gnome-pomodoro

if [ ! -z ${1+x} ];
then
    #echo "key is set to '$1'";
    case "$1" in
        1)   i3-gnome-pomodoro toggle ;;
        2)   i3-gnome-pomodoro start_stop ;;
        3)   i3-gnome-pomodoro skip ;;
    esac
fi


status=`i3-gnome-pomodoro status --always`

if [[ "$status" == *"PAUSED"* ]]; then
    textcolor="#FF8C00"
elif [[ "$status" == *"Break"* ]]; then
    textcolor="#69BF7F"
else
    textcolor="#fed8b1"
fi


# echo "<span font='FontAwesome' background='#002b36'> $status</span>";
echo " $status "
# echo "$status"
# echo "$textcolor"
# echo "#002b36"
# echo ""

exit 0

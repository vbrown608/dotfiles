#!/bin/sh
if xrandr -q | grep -q 'HDMI2 connected'
then
  xrandr --output HDMI2 --primary --scale 1.333x1.333 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI1 --off --output DP-1 --off --output eDP1 --mode 2560x1440 --pos 0x1448 --rotate normal --output DP-2 --off
elif xrandr -q | grep -q 'HDMI1 connected'
then
  xrandr --output HDMI2 --off --output HDMI1 --primary --scale 1.33x1.33 --mode 1600x900 --pos 176x0 --rotate normal --output DP-1 --off --output eDP1 --mode 2560x1440 --pos 0x1197 --rotate normal --output DP-2 --off
else
  xrandr --output HDMI2 --off --output HDMI1 --off --output DP-1 --off --output eDP1 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-2 --off
fi
feh --bg-scale /home/vivian/dotfiles/mountains.jpg

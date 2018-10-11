#!/bin/sh
if xrandr -q | grep -q 'HDMI-2 connected'
then
  xrandr --output HDMI-2 --primary --scale 1.333x1.333 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --off --output DP-1 --off --output eDP-1 --mode 2560x1440 --pos 0x1448 --rotate normal --output DP-2 --off
elif xrandr -q | grep -q 'HDMI-1 connected'
then
  xrandr --output HDMI-2 --off --output HDMI-1 --primary --scale 1.33x1.33 --mode 1600x900 --pos 176x0 --rotate normal --output DP-1 --off --output eDP-1 --mode 2560x1440 --pos 0x1197 --rotate normal --output DP-2 --off
else
  xrandr --output HDMI-2 --off --output HDMI-1 --off --output DP-1 --off --output eDP-1 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-2 --off
fi

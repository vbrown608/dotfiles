#!/bin/sh
if xrandr -q | grep -q 'HDMI2 connected'
then
  xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 2560x1440 --pos 0x1440 --rotate normal --output DP1 --off --output HDMI2 --mode 1920x1080 --pos 0x0 --rotate normal --scale 1.333x1.333 --output HDMI1 --off --output DP2 --off
elif xrandr -q | grep -q 'HDMI1 connected'
then
  xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 2560x1440 --pos 0x1440 --rotate normal --output DP1 --off --output HDMI2 --off --output HDMI1 --mode 1600x900 --pos 0x0 --rotate normal --scale 1.33x1.33 --output DP2 --off
else
  xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP1 --off --output HDMI2 --off --output HDMI1 --off --output DP2 --off
fi

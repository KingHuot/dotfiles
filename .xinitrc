#!/bin/sh

setxkbmap es

xrandr --newmode "1368x768_60.00" 85.25 1368 1440 1576 1784 768 771 781 798 -hsync +vsync
xrandr --addmode VGA-0 1368x768_60.00
xrandr -s 1368x768

picom -f &
picom --config ~/.config/picom/picom.conf &

xwallpaper --zoom ~/wallpapers/Hallstatt.jpg &

slstatus &

#while true; do
# dwm >/dev/null 2>&1
#done

exec dwm

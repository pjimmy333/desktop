#!/bin/zsh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

wifi(){
	wifi=`iwctl station wlan0 show | grep "Connected network" | sed 's/Connected network//' | sed 's/\s*//g'`
	echo -e "$wifi"
}

bte(){
       bat=`cat /sys/class/power_supply/BAT0/capacity | sed "s/$/%/"`
       echo -e "$bat"
}

dte(){
        da=`date +"%A %-m/%-d/%y %-I:%M"`
        echo -e "$da"
}

while true; do
        xsetroot -name " $(dte) | $(wifi) | $(bte)"
        sleep 10s
done &

setxkbmap -option caps:escape
~/.fehbg
exec dwm

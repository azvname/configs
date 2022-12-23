#!/bin/bash

#xset +fp /usr/share/fonts/misc
xset +fp /usr/share/fonts/local
xset +fp ~/.fonts
#feh --bg-fill ~/Pictures/wallpaper/5774532298_f6eaa36b5d_b.jpg
feh --bg-fill ~/Pictures/303155.jpg

#feh --bg-fill ~/Pictures/wallpaper/4135427.jpg

xrdb -merge ~/.Xresources
#feh --bg-fill ~/Pictures/303155.jpg

#dwmstatus &
#syndaemon -d -t -i 2 &

#firefox &
#barrier &
#/home/zakhar/.scripts/scrip.sh &

gsettings set org.freedesktop.ibus.general switcher-delay-time '0'
#eval "$(dbus-launch --sh-syntax --exit-with-session)"
#export GTK_IM_MODULE=xim
#export QT_IM_MODULE=xim
##
#export XMODIFIERS="@im=ibus"
ibus-daemon -drx
#
#urxvtd --quiet --opendisplay --fork
#export RXVT_SOCKET='/tmp/urxvt-socket'
#urxvt & 


#setxkbmap "us,ru" ",winkeys" "grp:caps_toggle,grp_led:caps" &
#exec dwm
#while true
#	do
#	/usr/bin/dwm 2>&1  
#done
#exec startxfce4

#exec bspwm
#exec awesome
#exec fluxbox
#exec startxfce4
exec i3

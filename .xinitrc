#!/bin/zsh
xset +fp /usr/share/fonts/local
xset +fp ~/.fonts
#xrandr --output eDP1 --mode 1366x768
#ibus-daemon -drx
xrdb -merge ~/.Xresources
#barrier&
#code&
#emacs&
#firefox&
setxkbmap "us,ru" ",winkeys" "grp:caps_toggle,grp_led:caps" &
#feh --bg-fill "/home/zakhar/Pictures/girls/1625782978_9-kartinkin-com-p-tarkov-anime-anime-krasivo-10.jpg"
feh --bg-fill "/home/zakhar/Pictures/girls/SWAV_anime_anime_girls_car-1955151.png"
#code&
#urxvt -e zsh -c "emacs -nw;zsh"&
gsettings set org.freedesktop.ibus.general switcher-delay-time '0'
#eval "$(dbus-launch --sh-syntax --exit-with-session)"
#export GTK_IM_MODULE=xim
#export QT_IM_MODULE=xim
#export XMODIFIERS="@im=ibus"
#export GTK_IM_MODULE=ibus # для dbeaver
#exec dwm
#exec dbus-launch i3
#exec dbus-launch startxfce4
#exec openbox
#exec dbus-launch xmonad
#exec dbus-launch icewm
exec i3
#exec startplasma-x11

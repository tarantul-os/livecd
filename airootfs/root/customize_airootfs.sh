echo """
sxhkd &
calamares &
picom -b --animations --animation-window-mass 0.3 --animation-for-open-window zoom
feh --bg-scale /root/.confug/wall.png
flameshot &
~/.config/polybar/launch.sh &

exec bspwm

bspc monitor -d 1 2 3
bspc config border_width         0
bspc config window_gap          50

bspc config split_ratio          0.52
bspc config borderless_monocle   true
bspc config gapless_monocle      true
bspc config focus_follows_pointer true

""" > /root/.xinitrc
rm /etc/X11/xinit/xinitrc

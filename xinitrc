export LC_ALL="pt_BR.UTF-8"
export LANG="pt_BR.UTF-8"
export SHELL="/usr/local/bin/bash"

${HOME}/.fehbg

setxkbmap br
xrdb ${HOME}/.Xresources
xmodmap ${HOME}/.Xmodmap
musicpd
compton --no-fading-openclose &
killall wpa_supplicant
wpa_supplicant -Dbsd -iwlan0 -c/etc/wpa_supplicant.conf &
while true
do
    xsetroot -name "$(date +"%a %b %d") - $(date +"%R")"
    sleep 5
done &
exec dwm

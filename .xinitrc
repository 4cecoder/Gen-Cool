gentoo-pipewire-launcher &

xmodmap -e "keycode 135 = Super_L"
xmodmap -e "remove mod1 = Super_L"

# dpi scaling settings
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# go install github.com/amaretur/dwmblocks-go@latest
# simple status bar in go
dwmblocks-go &
source /home/fource/.fehbg
dbus-launch --sh-syntax --exit-with-session dwm

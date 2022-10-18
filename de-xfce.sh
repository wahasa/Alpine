#!/bin/bash

apk add nano sudo
apk add xfce4 xfce4-terminal xfce4-screensaver lightdm-gtk-greeter adwaita-icon-theme dbus bash

echo "#!/bin/sh
export PULSE_SERVER=127.0.0.1
DISPLAY=:1 startxfce4" > /usr/local/bin/vncstart

chmod +x /usr/local/bin/vncstart

rm de-xfce.sh

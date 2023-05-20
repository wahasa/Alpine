#!/bin/bash

#Get the necessary components
apk add nano sudo
apk add --no-cache ca-certificates openssl bash-completion

#Installing desktop environment
apk add xfce4 xfce4-terminal xfce4-dev-tools adwaita-xfce-icon-theme xfwm4-themes xfburn parole ristretto pulseaudio dbus

#Get the extra components
apk add xfce4-taskmanager xfce4-mixer xfce4-notifyd xfce4-panel-profiles xfce4-screensaver xfce4-screenshooter gigolo orage mousepad

echo "#!/bin/sh
export DISPLAY=:1
export PULSE_SERVER=127.0.0.1
rm -rf /run/dbus/dbus.pid
dbus-launch xfce4-session" > /usr/local/bin/vncstart
chmod +x /usr/local/bin/vncstart

clear
echo ""
echo "Installing browser,.."
echo ""
apk add firefox
clear
echo ""
echo "Vnc Server address will run at 127.0.0.1:5901"
echo ""
echo "In Termux"
echo "Start Vnc Server, run vncstart"
echo "Stop  Vnc Server, run vncstop"
echo ""
echo "In Linux"
echo "Start Vnc, run vncstart"
echo "Exit  Vnc, run ctrl+c"
echo ""

rm de-xfce.sh

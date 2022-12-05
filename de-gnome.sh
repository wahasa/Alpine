#!/bin/bash

#Get the necessary components
apk add nano sudo
apk add --no-cache ca-certificates openssl bash-completion

#Installing desktop environment
apk add gnome gnome-flashback gnome-terminal pulseaudio 

#Get the extra components
apk add gnome-apps-core lxterminal dbus

echo "#!/bin/sh
export DISPLAY=:1
export PULSE_SERVER=127.0.0.1
rm -rf /run/dbus/dbus.pid
dbus-daemon --system
dbus-launch gnome-session --builtin --session=gnome-flashback-metacity --disable-acceleration-check --debug &
dbus-launch metacity &
dbus-launch gnome-panel &
dbus-launch gnome-flashback" > /usr/local/bin/vncstart
clear
chmod +x /usr/local/bin/vncstart

echo " "
echo "Installing browser,.."
echo " "
apk add firefox
clear
echo " "
echo "Vnc Server address will run at 127.0.0.1:5901"
echo " "
echo "In Termux"
echo "Start Vnc Server, run vncstart"
echo "Stop  Vnc Server, run vncstop"
echo " "
echo "In Linux"
echo "Start Vnc, run vncstart"
echo "Exit  Vnc, run ctrl+c"
echo " "

rm de-gnome.sh

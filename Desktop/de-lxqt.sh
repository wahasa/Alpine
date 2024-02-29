#!/bin/bash
#Get the necessary components
apk add gvfs udisks2
apk add --no-cache ca-certificates openssl bash-completion

#Installing desktop environment
apk add lxqt-desktop qterminal pulseaudio dbus

#Get the extra components
apk add oxygen-icons lximage-qt

echo "#!/bin/sh
export DISPLAY=:1
export PULSE_SERVER=127.0.0.1
rm -rf /run/dbus/dbus.pid
dbus-launch startlxqt" > /usr/local/bin/vncstart
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

rm de-lxqt.sh

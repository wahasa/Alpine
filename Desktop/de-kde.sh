
#!/bin/bash
#Get the necessary components
apk add gvfs udisks2
apk add --no-cache ca-certificates openssl bash-completion

#Installing desktop environment
apk add plasma konsole dolphin pulseaudio dbus 

echo "#!/bin/sh
export DISPLAY=:1
export PULSE_SERVER=127.0.0.1
rm -rf /run/dbus/dbus.pid
dbus-launch startplasma-x11" > /usr/local/bin/vncstart
chmod +x /usr/local/bin/vncstart
   clear
   echo ""
   echo "Installing browser,.."
   echo ""
   apk add firefox-esr
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
   echo "Exit Vnc, run ctrl+c 2x"
   echo ""
rm de-kde.sh

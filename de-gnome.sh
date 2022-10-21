#!/bin/bash

#Get the necessary components
apk add nano sudo
apk add --no-cache ca-certificates openssl bash-completion

#Installing desktop environment
apk add gnome gnome-flashback gnome-terminal pulseaudio firefox dbus 

#Get the extra components

rm de-gnome.sh

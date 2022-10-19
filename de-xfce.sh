#!/bin/bash

#Get the necessary components
apk add nano sudo
apk add --no-cache ca-certificates openssl bash-completion

#Installing desktop environment
apk add xfce4 xfce4-terminal faenza-icon-theme xfwm4-themes firefox dbus

#Get the extra components
apk add mousepad ristretto xfburn parole xfce4-notifyd xfce4-screenshooter xfce4-taskmanager xfce4-power-manager

rm de-xfce.sh

<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
## Alpine on Termux Android

* Install Apps on Android
- [x] [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [x] [Termux-x11](https://github.com/termux/termux-x11/releases)

### Installation

Copy and paste this commands to Termux
> apt update

<details><summary><b><code>Install Alpine</code></b></summary></br>

> apt install wget
#### Alpine 3.20 (Latest)
Rootfs : Armhf, Arm64, i386, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Alpine/main/Install/alpine3.20.sh ; chmod +x alpine3.20.sh ; ./alpine3.20.sh
```

#### Alpine 3.21 (Devel)
Rootfs : Armhf, Arm64, i386, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Alpine/main/Install/alpinedev.sh ; chmod +x alpinedev.sh ; ./alpinedev.sh
```

#### List Alpine | [Click Hare >](https://github.com/wahasa/Alpine/tree/main/Install)
</details>

---
* Login Alpine
```
alpine
```

* Logout Alpine
```
exit
```

* Remove Alpine
```
rm -rf alpine-fs .alpine $PREFIX/bin/alpine
```

---
Basic commands Alpine
> apk update : Update list package.</br>
> apk upgrade : Upgrade package.</br>
> apk search (pkg) : Search package.</br>
> apk add (pkg) : Install package.</br>
> apk del (pkg) : Delete package.</br>

---
### Install Desktop Environment

In Alpine, run this commands
> apk update

<details><summary><b><code>Xfce Desktop</code></b></summary></br>

```
apk add --no-cache ca-certificates openssl bash-completion gvfs udisks2
```
```
apk add xfce4 xfce4-terminal adw-gtk3 adwaita-xfce-icon-theme firefox-esr xfburn parole ristretto pulseaudio gst-libav eudev dbus
```
```
apk add lightdm-gtk-greeter xfce4-screenshooter xfce4-screensaver xfce4-cpufreq-plugin xfce4-cpugraph-plugin xfce4-whiskermenu-plugin xfce4-taskmanager xfce4-notifyd polkit-elogind elogind
```
</details>

<details><summary><b><code>Lxqt Desktop</code></b></summary></br>

```
apk add --no-cache ca-certificates openssl bash-completion gvfs udisks2
```
```
apk add lxqt-desktop lximage-qt obconf-qt pavucontrol-qt adwaita-xfce-icon-theme adwaita-qt firefox-esr pulseaudio eudev dbus
```
```
apk add sddm screengrab breeze oxygen qt5-qtgraphicaleffects qt5-qtquickcontrols qt5-qtquickcontrols2 polkit-elogind elogind
```
</details>

<details><summary><b><code>Kde- Desktop</code></b></summary></br>

```
apk add --no-cache ca-certificates openssl bash-completion gvfs udisks2
```
```
apk add plasma-desktop plasma-desktop-meta firefox-esr pulseaudio dbus
```
```
apk add sddm eudev polkit-elogind elogind
```
</details>

<details><summary><b><code>Mate Desktop</code></b></summary></br>

```
apk add --no-cache ca-certificates openssl bash-completion gvfs udisks2
```
```
apk add mate-desktop-environment adwaita-icon-theme faenza-icon-theme firefox-esr pulseaudio dbus
```
```
apk add lxdm eudev polkit-elogind elogind
```
</details>

---
Feature
- [x] Fixed Sound Output
- [x] Access to Sdcard
- [x] Access to Termux-x11
- [x] Add New Username | [Click Here >](https://github.com/wahasa/Alpine/blob/main/Patch/AddUser.md)
- [x] Fixed Browser Crash  | [Click Here >](https://github.com/wahasa/Alpine/blob/main/Apps/Firefoxfix.md#fixed-firefox-crash)
- [x] Install Applications | [Click Here >](https://github.com/wahasa/Alpine/tree/main/Apps#list-applications)

Visit problem now in : [Issues](https://github.com/wahasa/Alpine/issues)

---
### Run Desktop Environment
<details><summary><b><code>With Termux-x11</code></b></summary></br>

Install Termux-x11
- App Termux-x11

- [x] [Link Download](https://github.com/termux/termux-x11/releases)

---
Commands in Termux (session 1)

- Install Package
```
apt install termux-x11-nightly -y
```

- Add script
```
echo "termux-x11 :1" > $PREFIX/bin/start-x11
```
```
echo "pkill -f com.termux.x11" > $PREFIX/bin/stop-x11
```

- Activate script
```
chmod +x $PREFIX/bin/start-x11
```
```
chmod +x $PREFIX/bin/stop-x11
```

---
Add new session :</br>
Swipe the screen from left to right in termux, click 'New Session'.

---
Commands in Alpine (session 2)
> apk add nano

- Edit script
```
nano /usr/local/bin/start-x11
```

- Add script
```
#!/bin/sh
export DISPLAY=:1
export PULSE_SERVER=127.0.0.1

# --XFCE-- #
#startxfce4

# --LXQT-- #
#startlxqt

# --KDE-- #
#startplasma-x11

# --MATE-- #
#mate-session

# --END-- #
```

Save : ctrl + x, click Y enter.

Note :</br>
Remove the sign (#) on the desktop you are installing now.

- Activate script
```
chmod +x /usr/local/bin/start-x11
```

---
#### Run Termux-x11
- Start Termux-x11

In session 1(termux), run this command
```
start-x11
```

In session 2 (alpine), run this command
```
start-x11
```

Open app Termux-x11
</br>

---
- Stop Termux-x11

Close app Termux-x11

In session 2 (alpine), run this command
> Click Ctrl+c, enter (2X)

In session 1(termux), run this command
> stop-x11

---
</details>

<details><summary><b><code>With RVNC Viewer</code></b></summary></br>

Install RVNC Viewer
- App RVNC Viewer

- [x] [Link Download](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

---
Commands in Termux (session 1)

- Install Package
```
apt install tigervnc xorg-xhost -y
```

- Add script
```
echo "vncserver -geometry 1600x900 -listen tcp :1 && DISPLAY=:1 xhost +" > $PREFIX/bin/vncstart
```
```
echo "vncserver -kill :1" > $PREFIX/bin/vncstop
```

- Activate script
```
chmod +x $PREFIX/bin/vncstart
```
```
chmod +x $PREFIX/bin/vncstop
```

---
Add new session :</br>
Swipe the screen from left to right in termux, click 'New Session'.

---
Commands in Alpine (session 2)
> apk add nano

- Edit script
```
nano /usr/local/bin/vncstart
```

- Add script
```
#!/bin/sh
export DISPLAY=:1
export PULSE_SERVER=127.0.0.1

# --XFCE-- #
#startxfce4

# --LXQT-- #
#startlxqt

# --KDE-- #
#startplasma-x11

# --MATE-- #
#mate-session

# --END-- #
```

Save : ctrl + x, click Y enter.

Note :</br>
Remove the sign (#) on the desktop you are installing now.

- Activate script
```
chmod +x /usr/local/bin/vncstart
```

---
#### Run RVNC Viewer
- Start VNC Server

In session 1(termux), run this command
```
vncstart
```

In session 2 (alpine), run this command
```
vncstart
```

---
- Open app RVNC Viewer

Add (+) VNC Client to connect, fill with :

Address
> localhost:1 

Name
> Desktop

To disconnect VNC Client, click (X) on the right.
</br>

---
- Stop VNC Server

Close app RVNC Viewer

In session 2 (alpine), run this command
> Click Ctrl+c, enter (2X)

In session 1(termux), run this command
> vncstop

---
</details>

<details><summary><b><code>With BVNC Viewer</code></b></summary></br>

Install BVNC Viewer
- App BVNC Viewer

- [x] [Link Download](https://play.google.com/store/apps/details?id=com.iiordanov.freebVNC)

---
Commands in Termux

- Install Package
```
apt install tigervnc xorg-xhost -y
```

- Add script
```
echo "vncserver -geometry 1600x900 -listen tcp :1 && DISPLAY=:1 xhost +" > $PREFIX/bin/vncstart
```
```
echo "vncserver -kill :1" > $PREFIX/bin/vncstop
```

- Activate script
```
chmod +x $PREFIX/bin/vncstart
```
```
chmod +x $PREFIX/bin/vncstop
```

---
#### Run BVNC Viewer
- Start VNC Server

In session 1(termux), run this command
```
vncstart
```
---
Add new session :</br>
Swipe the screen from left to right in termux, click 'New Session'.

---
In session 2 (alpine), run this commands
```
export DISPLAY=:1
```
```
export PULSE_SERVER=127.0.0.1
```

---
XFCE Desktop
```
startxfce4
```
LXQT Desktop
```
startlxqt
```
KDE- Desktop
```
startplasma-x11
```
MATE Desktop
```
mate-session
```

---
- Open app BVNC Viewer

Add (+) VNC Client to connect, fill with :

VNC Connection Settings

Vnc Server
> 127.0.0.1

Port
> 5901

Vnc Password
> (Your vnc password)

---
- Stop VNC Server

Close app BVNC Viewer

In session 2 (alpine), run this command
> Click Ctrl+c, enter (2X)

In session 1(termux), run this command
> vncstop
</details>
</br>

---
<p align="center">Good Luck</p>

---

<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
## Alpine on Termux Android
<img src="https://raw.githubusercontent.com/wahasa/Alpine/refs/heads/main/Patch/Alpine.jpg">

* Install Apps on Android
- [x] [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [x] [Termux-x11](https://github.com/termux/termux-x11/releases)

### Installation

Copy and paste this commands to Termux
> apt update

- [x] Alpine 3.21

Rootfs : Armhf, Arm64, i386, Amd64
```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Install/alpine_3.21.sh ; chmod +x alpine_3.21.sh ; ./alpine_3.21.sh
```
- [x] Alpine 3.20

Rootfs : Armhf, Arm64, i386, Amd64
```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Install/alpine_3.20.sh ; chmod +x alpine_3.20.sh ; ./alpine_3.20.sh
```
- [x] Alpine 3.19

Rootfs : Armhf, Arm64, i386, Amd64
```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Install/alpine_3.19.sh ; chmod +x alpine_3.19.sh ; ./alpine_3.19.sh
```

- [x] Alpine 3.18

Rootfs : Armhf, Arm64, i386, Amd64
```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Install/alpine_3.18.sh ; chmod +x alpine_3.18.sh ; ./alpine_3.18.sh
```

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
> apk search (pkg) : Search pkg.</br>
> apk add (pkg) : Install package.</br>
> apk del (pkg) : Delete package.</br>

---
### Install Desktop Environment

In Alpine, run this commands
> apk update

- [x] Xfce Desktop

```
apk add --no-cache bash-completion openssl udev udisks2
```
```
apk add xfce4 xfce4-screenshooter xfce4-screensaver xfce4-taskmanager xfce4-notifyd xfce4-terminal adw-gtk3 adwaita-xfce-icon-theme xfburn parole ristretto pulseaudio chromium dbus-x11
```

---
Feature
- [x] Fixed Sound Output
- [x] Access to Sdcard
- [x] Access to Termux-x11
- [x] Add New Username     | [Click Here >](https://github.com/wahasa/Alpine/blob/main/Patch/AddUser.md#add-username-on-alpine)
- [x] Fixed Browser Crash  | [Click Here >](https://github.com/wahasa/Alpine/blob/main/Apps/Chromiumfix.md#fixed-chromium-on-alpine)
- [x] Install Applications | [Click Here >](https://github.com/wahasa/Alpine/tree/main/Apps#list-applications)

Visit problems now in : [Issues](https://github.com/wahasa/Alpine/issues)

---
### Run Desktop Environment
- [x] With Termux-X11  | [Click Here >](https://github.com/wahasa/Alpine/blob/main/Patch/Termux-X11.md#termux-x11-on-alpine)
- [x] With Rvnc Viewer | [Click Here >](https://github.com/wahasa/Alpine/blob/main/Patch/RvncViewer.md#rvnc-viewer-on-alpine)
</br>

---
<p align="center">Good Luck</p>

---

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

<details><summary><b><code>Install Alpine</code></b></summary></br>

> apt install wget
- [x] Alpine 3.21 (Pre-release)

Rootfs : Armhf, Arm64, i386, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Alpine/main/Install/alpine3.21.sh ; chmod +x alpine3.21.sh ; ./alpine3.21.sh
```
- [x] Alpine 3.20 (Latest-release)

Rootfs : Armhf, Arm64, i386, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Alpine/main/Install/alpine3.20.sh ; chmod +x alpine3.20.sh ; ./alpine3.20.sh
```
- [x] Alpine 3.19 (Old-release)

Rootfs : Armhf, Arm64, i386, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Alpine/main/Install/alpine3.19.sh ; chmod +x alpine3.19.sh ; ./alpine3.19.sh
```
- [x] Alpine Edge (Development)

Rootfs : Armhf, Arm64, i386, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Alpine/main/Install/alpinedev.sh ; chmod +x alpinedev.sh ; ./alpinedev.sh
```
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
### Install Desktop Environments

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
- [x] Add New Username     | [Click Here >](https://github.com/wahasa/Alpine/blob/main/Patch/AddUser.md#add-username-on-alpine)
- [x] Fixed Browser Crash  | [Click Here >](https://github.com/wahasa/Alpine/blob/main/Apps/Firefoxfix.md#fixed-firefox-on-alpine)
- [x] Install Applications | [Click Here >](https://github.com/wahasa/Alpine/tree/main/Apps#list-applications)

Visit problems now in : [Issues](https://github.com/wahasa/Alpine/issues)

---
### Run Desktop Environments
- [x] With Termux-X11  | [Click Here >](https://github.com/wahasa/Alpine/blob/main/Patch/Termux-X11.md#termux-x11-on-alpine)
- [x] With Rvnc Viewer | [Click Here >](https://github.com/wahasa/Alpine/blob/main/Patch/RvncViewer.md#rvnc-viewer-on-alpine)
- [x] With Bvnc Viewer | [Click Here >](https://github.com/wahasa/Alpine/blob/main/Patch/BvncViewer.md#bvnc-viewer-on-alpine)
</br>

---
<p align="center">Good Luck</p>

---

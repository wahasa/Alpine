<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
## Alpine on Termux Android

* Install Apps on Android
- [x] [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [x] [Termux-x11](https://github.com/termux/termux-x11/releases)

### Installation

Copy and paste this commands to Termux
> pkg update ; pkg install wget -y

<details><summary><b><code>Install Alpine</code></b></summary>

#### Alpine 3.20
Rootfs : Armhf, Arm64, i386, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Alpine/main/Install/alpine3.20.sh ; chmod +x alpine3.20.sh ; ./alpine3.20.sh
```

#### Alpine 3.21 (Dev)
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
- In Termux, run this commands
> apt update ; apt install wget -y

```
wget https://raw.githubusercontent.com/wahasa/Note/main/tigervnc ; chmod +x tigervnc ; ./tigervnc
```

- In Alpine, run this commands
> apk update ; apk add wget

<details><summary><b><code>Xfce Desktop</code></b></summary></br>

```
apk add xfce4 xfce4-terminal xfce4-screensaver adw-gtk3 adwaita-xfce-icon-theme lightdm-gtk-greeter pulseaudio dbus
```
```
apk add xfce4-screenshooter xfce4-taskmanager xfce4-notifyd firefox-esr xfburn parole ristretto
```
</details>

<details><summary><b><code>Lxqt Desktop</code></b></summary></br>

```
apk add lxqt-desktop lximage-qt obconf-qt pavucontrol-qt
```
</details>

<details><summary><b><code>Kde  Desktop</code></b></summary></br>

```
apk add plasma-desktop
```
</details>

<details><summary><b><code>Mate Desktop</code></b></summary></br>

```
apk add mate-desktop-environment lxdm adwaita-icon-theme faenza-icon-theme
```
</details>

---
Feature
- [x] Fixed Sound Output
- [x] Access to Sdcard
- [x] Access to Termux-x11
- [x] Fixed Browser Crash  | [Click Here >](https://github.com/wahasa/Alpine/tree/main/Note)
- [x] Install Applications | [Click Here >](https://github.com/wahasa/Alpine/tree/main/Apps)

Visit problem now in : [Issues](https://github.com/wahasa/Alpine/issues)

---
### Run Desktop Environment

* Termux-x11

Link > [Termux-x11](https://github.com/termux/termux-x11/releases)

* RVNC Viewer

Link > [RVNC Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

* BVNC Viewer

Link > [BVNC Viewer](https://play.google.com/store/apps/details?id=com.iiordanov.freebVNC)
</br>

---
<p align="center">Good Luck</p>

---

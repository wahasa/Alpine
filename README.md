<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---
## Alpine on Termux Android

---
• Install Apps on Android
- [x] [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [x] [Vnc Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

## Installation

Copy and paste this command to Termux
> pkg update

<details><summary><b><code>Install Alpine</code></b></summary>

#### Alpine 3.20
Rootfs : Armhf, Arm64, i386, Amd64
```
pkg install wget -y ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Install/alpine3.20.sh ; chmod +x alpine3.20.sh ; ./alpine3.20.sh
```

#### Alpine 3.21 (Dev)
Rootfs : Armhf, Arm64, i386, Amd64
```
pkg install wget -y ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Install/alpinedev.sh ; chmod +x alpinedev.sh ; ./alpinedev.sh
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
> apk -h : Help all commands.

---
### Install Desktop Environment

In Alpine, run this command
> apk update

<details><summary><b><code>Xfce Desktop</code></b></summary></br>

```
apk add wget ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Desktop/de-xfce.sh ; chmod +x de-xfce.sh ; ./de-xfce.sh
```
</details>

<details><summary><b><code>Lxqt Desktop</code></b></summary></br>

```
apk add wget ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Desktop/de-lxqt.sh ; chmod +x de-lxqt.sh ; ./de-lxqt.sh
```
</details>

<details><summary><b><code>Kde Desktop</code></b></summary></br>

```
apk add wget ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Desktop/de-kde.sh ; chmod +x de-kde.sh ; ./de-kde.sh
```
</details>

<details><summary><b><code>Mate Desktop</code></b></summary></br>

```
apk add wget ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Desktop/de-mate.sh ; chmod +x de-mate.sh ; ./de-mate.sh
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


<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---
## Alpine on Termux Android
![Alpine](https://github.com/user-attachments/assets/cedfdaa8-41ea-4779-a369-6a95d01b91e3)

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

#### Alpine 3.21 (Edge)
Rootfs : Armhf, Arm64, i386, Amd64
```
pkg install wget -y ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Install/alpinedev.sh ; chmod +x alpinedev.sh ; ./alpinedev.sh
```

#### List Alpine | [Click Hare >](https://github.com/wahasa/Alpine/tree/main/Install)
</details>

---
* Start Alpine
```
alpine
```

* Stop Alpine
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
## Desktop Environments

Make 2 Session in Termux

Swipe the screen from left to right in termux, click 'New Session'.

---
<b>Commands in Termux (Session 1)</b>

> pkg update
* Install Tigervnc

In Termux, run this command
```
wget https://raw.githubusercontent.com/wahasa/Alpine/main/tigervnc ; chmod +x tigervnc ; ./tigervnc
```

---
<b>Commands in Linux (Session 2)</b>

In Alpine, run this command
> apk update

<details><summary><b><code>Install Xfce Desktop</code></b></summary>

![xfce](https://github.com/wahasa/Project/assets/69626847/8a5d72d8-d08b-491f-a209-80e2fa68786a)
```
apk add wget ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Desktop/de-xfce.sh ; chmod +x de-xfce.sh ; ./de-xfce.sh
```
</details>

<details><summary><b><code>Install Lxqt Desktop</code></b></summary>

![lxqt](https://github.com/wahasa/Project/assets/69626847/e6290702-c845-4a95-b555-65e27d36c234)
```
apk add wget ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Desktop/de-lxqt.sh ; chmod +x de-lxqt.sh ; ./de-lxqt.sh
```
</details>

<details><summary><b><code>Install Kde Desktop</code></b></summary>

![kde](https://github.com/wahasa/Project/assets/69626847/efaf0ab7-2891-4314-bded-f9d9a25b4721)
```
apk add wget ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Desktop/de-kde.sh ; chmod +x de-kde.sh ; ./de-kde.sh
```
</details>

<details><summary><b><code>Install Mate Desktop</code></b></summary>

![mate](https://github.com/wahasa/Project/assets/69626847/f69e7da0-8476-44af-9051-92744b7e0b75)
```
apk add wget ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Desktop/de-mate.sh ; chmod +x de-mate.sh ; ./de-mate.sh
```
</details>

---
Feature
- [x] Fixed Sound
- [x] Access to Sdcard
- [x] Access to Termux-x11
- [x] Fixed Browser Crash  | [Click Here >](https://github.com/wahasa/Alpine/tree/main/Note)
- [x] Install Applications | [Click Here >](https://github.com/wahasa/Alpine/tree/main/Apps)

Visit problem now in : [Issues](https://github.com/wahasa/Alpine/issues)

---
## Vnc Viewer 
<details></br>
<summary><b><code>VNC Viewer Android</code></b></summary>

* Start Vnc Server

In Session 1 (Termux), run this command
> vncstart

To Session 2 (Alpine), run this command
> vncstart

---
* Open Vnc Viewer

Add (+) VNC Client to connect, fill with :

Address
```
localhost:1
```

Name
```
Alpine Desktop
```

To disconnect VNC Client, click (X) on the right.

---
* Stop Vnc Server

To Session 2 (Alpine), run this command
> ctrl + c (2X)

In Session 1 (Termux), run this command
> vncstop

Close session with 'exit'.
</details>

---
## Termux-x11
<details></br>
<summary><b><code>Termux-x11 Android</code></b></summary>

[> Click Here <](https://github.com/wahasa/Alpine/blob/main/Note/Termux-x11fix.md)
</details>
</br>

---
<p align="center">Good Luck</p>

---

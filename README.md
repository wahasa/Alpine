
<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---
## Alpine on Termux Android
![a-default](https://github.com/wahasa/Alpine/assets/69626847/83b5456d-5d43-4d03-b88d-f69888bc0326)

---
• Install Apps on Android
- [x] [Termux](https://apkcombo.com/termux/com.termux/)
- [x] [Vnc Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

## Installation

Copy and paste this command to Termux
> pkg update && pkg upgrade

* Install Alpine

```
pkg install wget -y ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/install.sh ; chmod +x install.sh ; ./install.sh
```

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
rm -rf alpine-fs
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
#### Commands in Termux (Session 1)
> pkg update
* Install Tigervnc

on Termux, run this command
```
wget https://raw.githubusercontent.com/wahasa/Alpine/main/tigervnc ; chmod +x tigervnc ; ./tigervnc
```

---
#### Commands in Linux (Session 2)
on Alpine, run this command
> apk update

<details><summary><b><code>Install Xfce Desktop</code></b></summary>
<p align="center"><img src="https://github.com/wahasa/Alpine/raw/main/Image/xfce.jpg"</p>

```
apk add wget ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Desktop/de-xfce.sh ; chmod +x de-xfce.sh ; ./de-xfce.sh
```
</details>

<details><summary><b><code>Install Lxqt Desktop</code></b></summary>
<p align="center"><img src="https://github.com/wahasa/Alpine/raw/main/Image/lxqt.jpg"</p>

```
apk add wget ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Desktop/de-lxqt.sh ; chmod +x de-lxqt.sh ; ./de-lxqt.sh
```
</details>

<details><summary><b><code>Install Kde Desktop</code></b></summary>
<p align="center"><img src="https://github.com/wahasa/Alpine/raw/main/Image/kde.jpg"</p>

```
apk add wget ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Desktop/de-kde.sh ; chmod +x de-kde.sh ; ./de-kde.sh
```
</details>

<details><summary><b><code>Install Mate Desktop</code></b></summary>
<p align="center"><img src="https://github.com/wahasa/Alpine/raw/main/Image/mate.jpg"</p>

```
apk add wget ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/Desktop/de-mate.sh ; chmod +x de-mate.sh ; ./de-mate.sh
```
</details>

---
Feature
- [x] Fixed Sound
- [x] Access to Sdcard
- [x] Fixed Browser Crash [Click here,.](https://github.com/wahasa/Alpine/issues/1#issuecomment-1283386128)
- [x] Install Applications [Click here,.](https://github.com/wahasa/Alpine/tree/main/Apps)

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

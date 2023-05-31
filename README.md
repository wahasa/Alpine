
<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---
## Alpine on Termux Android

---
• Install Apps on Android
- [x] [Termux](https://apkcombo.com/termux/com.termux/)
- [x] [Vnc Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

## Installation

Copy and paste this command to Termux :
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
## Desktop Environment

Make 2 Session in Termux

Swipe the screen from left to right in termux, click 'New Session'.

---
1. Session 1 (in termux)
> pkg update && pkg Upgrade

* Install Tigervnc

on Termux, run this command :
```
wget https://raw.githubusercontent.com/wahasa/Alpine/main/tigervnc && chmod +x tigervnc && ./tigervnc
```

---
2. Session 2 (in alpine)

on Alpine, run this command :
> apk update && apk upgrade

<details></br>
<summary><b><code>Install Desktop Xfce</code></b></summary>
<p align="center"><img src="https://github.com/wahasa/Alpine/raw/main/Image/xfce.jpg"</p>
</details>

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/de-xfce.sh ; chmod +x de-xfce.sh ; ./de-xfce.sh
```

<details></br>
<summary><b><code>Install Desktop Lxqt</code></b></summary>
<p align="center"><img src="https://github.com/wahasa/Alpine/raw/main/Image/lxqt.jpg"</p>
</details>

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/de-lxqt.sh ; chmod +x de-lxqt.sh ; ./de-lxqt.sh
```

<details></br>
<summary><b><code>Install Desktop Kde</code></b></summary>
<p align="center"><img src="https://github.com/wahasa/Alpine/raw/main/Image/kde.jpg"</p>
</details>

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/de-kde.sh ; chmod +x de-kde.sh ; ./de-kde.sh
```

<details></br>
<summary><b><code>Install Desktop Mate</code></b></summary>
<p align="center"><img src="https://github.com/wahasa/Alpine/raw/main/Image/mate.jpg"</p>
</details>

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/de-mate.sh ; chmod +x de-mate.sh ; ./de-mate.sh
```

<details></br>
<summary><b><code>Install Desktop Gnome</code></b></summary>
<p align="center"><img src="https://github.com/wahasa/Alpine/raw/main/Image/gnome.jpg"</p>
</details>

There are apps & features that cann't be opened.

```
apt install wget -y ; wget https://raw.githubusercontent.com/wahasa/Alpine/main/de-gnome.sh ; chmod +x de-gnome.sh ; ./de-gnome.sh
```

---
Feature
- [x] Fixed Sound
- [x] Access to Sdcard
- [x] Fixed Browser Crash [Click here,.](https://github.com/wahasa/Alpine/issues/1#issuecomment-1283386128)
- [x] Install Applications [Click here,.](https://github.com/wahasa/Alpine/tree/main/Apps)

Visit problem now in : [Issues](https://github.com/wahasa/Alpine/issues)

---
### Vnc Viewer 
* Start Vnc Server

On Session 1 (termux), run this command :

> vncstart

To Session 2 (alpine), run this command :

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

on Session 1 (termux), run this command :

> vncstop

Close session with 'exit'.

To Session 2 (Alpine), run this command :

> ctrl + c

</br>

---
<p align="center">Good Luck</p>

---

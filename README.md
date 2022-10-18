
<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---
## Alpine on Termux Android

---------
Warning :

Especially for Android 12 there are several bugs, and for more details, please read in Official [Termux](https://github.com/termux/termux-app).

---------
• Install Apps on Android
- [x] [Termux](https://github.com/termux/termux-app/releases)
- [x] [Vnc Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

## Installation

Copy and paste this command to Termux :

```
pkg update && pkg upgrade
```

1. Alpine 3.16.2
* Install Alpine

```
pkg install wget -y && wget https://raw.githubusercontent.com/wahasa/Alpine/main/install-alpine.sh && chmod +x install-alpine.sh && ./install-alpine.sh
```

2. Start Alpine

```
alpine
```

3. Stop Alpine

```
exit

```

---
4. Desktop Environment

on Alpine, run this command :

```
apk update && apk upgrade
```

* Make 2 Session in Termux

Swipe the screen from left to right in termux, click 'New Session'.

---
• Session 1 (in termux)

Install Tigervnc

on Termux, run this command :
```
wget https://raw.githubusercontent.com/wahasa/Alpine/main/tigervnc && chmod +x tigervnc && ./tigervnc
```

---
• Session 2 (in alpine)

- Install Desktop-xfce
```
apk add wget && wget https://raw.githubusercontent.com/wahasa/Alpine/main/de-xfce.sh && chmod +x de-xfce.sh && ./de-xfce.sh
```

---
### Vnc Viewer 
* Start Vnc Server

On Session 1 (termux), run this command :

> vncstart

To Session 2 (alpine), run this command :

```
export PULSE_SERVER=127.0.0.1 && DISPLAY=:1 xfce4-session
```

---
* Stop Vnc Server

on Session 1 (termux), run this command :

> vncstop

Close session with 'exit'.

</br>

---
<p align="center">Good Luck</p>

---

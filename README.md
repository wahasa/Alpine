
<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---
## Alpine on Termux Android

---
Announcement :

For android 12 in [Termux v0.119.1](https://apkcombo.com/termux/com.termux/) fixed.

---
• Install Apps on Android
- [x] [Termux](https://github.com/termux/termux-app/releases)
- [x] [Vnc Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

## Installation

Copy and paste this command to Termux :
> pkg update && pkg upgrade

1. Install Alpine

* Alpine 3.17</br>
(Armhf,Arm64,Amd64)
```
pkg install wget && wget https://raw.githubusercontent.com/wahasa/Project/main/Linux/Alpine/alpine3.17.sh && chmod +x alpine3.17.sh && ./alpine3.17.sh
```

* Alpine 3.16</br>
(Armhf,Arm64,Amd64)
```
pkg install wget && wget https://raw.githubusercontent.com/wahasa/Project/main/Linux/Alpine/alpine3.16.sh && chmod +x alpine3.16.sh && ./alpine3.16.sh
```

* Alpine 3.15</br>
(Armhf,Arm64,Amd64)
```
pkg install wget && wget https://raw.githubusercontent.com/wahasa/Project/main/Linux/Alpine/alpine3.15.sh && chmod +x alpine3.15.sh && ./alpine3.15.sh
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
4. [Desktop Environment](https://github.com/wahasa/Alpine/issues/2)

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

- [Install Desktop-xfce](https://youtu.be/KjrNB2WG6l8)
```
apk add wget && wget https://raw.githubusercontent.com/wahasa/Alpine/main/de-xfce.sh && chmod +x de-xfce.sh && ./de-xfce.sh
```

- [Install Desktop-kde](https://youtu.be/MLa_uA3CIgE)
```
apk add wget && wget https://raw.githubusercontent.com/wahasa/Alpine/main/de-kde.sh && chmod +x de-kde.sh && ./de-kde.sh
```

- [Install Desktop-mate](https://youtu.be/1-FIP9eerfU)
```
apk add wget && wget https://raw.githubusercontent.com/wahasa/Alpine/main/de-mate.sh && chmod +x de-mate.sh && ./de-mate.sh
```

- [Install Desktop-gnome](https://youtu.be/1mVlZ4UFQLo)

```
apk add wget && wget https://raw.githubusercontent.com/wahasa/Alpine/main/de-gnome.sh&& chmod +x de-gnome.sh && ./de-gnome.sh
```

Note

After installing the desktop run the command 'ctrl+c, y enter' to go to alpine home.

---
Note :
- [x] Soundfix
- [x] Browserfix [Click here,.](https://github.com/wahasa/Alpine/issues/1#issuecomment-1283386128)
- [x] Install Chromium [Click here,.](https://github.com/wahasa/Alpine/issues/1#issuecomment-1288258119)

Visit problem now in : [Issues](https://github.com/wahasa/Alpine/issues)

---
### Vnc Viewer 
1. Start Vnc Server

On Session 1 (termux), run this command :

> vncstart

To Session 2 (alpine), run this command :

> vncstart

---
2. Open Vnc Viewer

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
3. Stop Vnc Server

on Session 1 (termux), run this command :

> vncstop

Close session with 'exit'.

</br>

---
<p align="center">Good Luck</p>

---

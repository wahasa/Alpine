### Run BVNC Viewer
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

### RVNC Viewer on Alpine
<img src="https://raw.githubusercontent.com/wahasa/Alpine/refs/heads/main/Patch/RVNC-Viewer.jpg">

- App RVNC Viewer

- [x] [Link Download](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

---
Commands in Termux (session 1)

- Install pkg
```
apt install tigervnc xorg-xhost -y
```

- Add script
```
echo "vncserver -geometry 1600x900 -listen tcp :1 && DISPLAY=:1 xhost +" > $PREFIX/bin/vncstart ; echo "vncserver -kill :1" > $PREFIX/bin/vncstop
```

- Activate script
```
chmod +x $PREFIX/bin/vnc*
```

---
Add new session :</br>
Swipe the screen from left to right in termux, click 'New Session'.

---
Commands in Linux (session 2)
> apk add nano

- Edit script
```
nano /usr/local/bin/vncstart
```

- Add script
```
#!/bin/sh
export DISPLAY=:1
export PULSE_SERVER=127.0.0.1
startxfce4
```

Save : ctrl + x, click Y enter.

- Activate script
```
chmod +x /usr/local/bin/vncstart
```

#### Run RVNC Viewer
- Start VNC Server

In session 1(termux), run this command
```
vncstart
```

In session 2 (linux), run this command
```
vncstart
```

---
- Open RVNC Viewer

Add (+) VNC Client to connect, fill with :

Address
> localhost:1 

Name
> Desktop

To disconnect VNC Client, click (X) on the right.
</br>

---
- Stop VNC Server

Close RVNC Viewer

In session 2 (linux), run this command
> Click Ctrl+c, enter (2X)

In session 1(termux), run this command
> vncstop
</br>

---
<p align="center">Good Luck</p>

---

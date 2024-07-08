### Termux-x11 Alpine

![TermuxX11](https://github.com/wahasa/Project/assets/69626847/07a7b273-7214-4a94-98b4-90b50b4720c0)

---
#### Commands in Termux
> pkg install nano -y

* Install Package
```
pkg install termux-x11-nightly -y
```

* App Termux-x11

- [x] [Link Download](https://github.com/termux/termux-x11/releases)

---
Add new session :</br>
Swipe the screen from left to right in termux, click 'New Session'.

#### Commands in Alpine
> apk add nano

* Edit script
```
nano /usr/local/bin/termux-x11
```

* Add script
```
#!/bin/sh
export DISPLAY=:1
export PULSE_SERVER=127.0.0.1
rm -rf /run/dbus/dbus.pid
#dbus-launch $HOME/.vnc/xstartup

# --XFCE-- #
startxfce4

# --LXQT-- #
#startlxqt

# --KDE-- #
#startplasma-x11

# --MATE-- #
#mate-session

# --END-- #
```

Save : ctrl + x, click Y enter.

Note :</br>
Remove the sign (#) on the desktop you are installing now.

* Enable script
```
chmod +x /usr/local/bin/termux-x11
```

---
## Termux-x11
* Start termux-x11

In session 1(termux), run this command
```
termux-x11 :1
```

In session 2 (alpine), run this command
```
termux-x11
```

Open app termux-x11
</br></br>

---
* Stop termux-x11

Close app termux-x11

In session 2 (alpine), run this command
> Click Ctrl+c, enter (2X)

In session 1 (termux), run this command
> Click Ctrl+c, enter
</br>

---
<p align="center">Good Luck</p>

---

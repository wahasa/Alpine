### Termux-x11 on Alpine
<img src="https://raw.githubusercontent.com/wahasa/Alpine/refs/heads/main/Patch/Termux-X11.jpg">

- App Termux-x11

- [x] [Link Download](https://github.com/termux/termux-x11/releases)

---
Commands in Termux (session 1)

- Install pkg
```
apt install termux-x11-nightly -y
```

- Add script
```
echo "termux-x11 :1" > $PREFIX/bin/x11start ; echo "pkill -f com.termux.x11" > $PREFIX/bin/x11stop
```

- Activate script
```
chmod +x $PREFIX/bin/x11*
```

- Edit Properties
```
nano ~/.termux/termux.properties
```

Example :
> #allow-external-apps = true

To

> allow-external-apps = true

Save : ctrl + x, click Y enter.

---
Add new session :</br>
Swipe the screen from left to right in termux, click 'New Session'.

---
Commands in Linux (session 2)
> apk add nano

- Edit script
```
nano /usr/local/bin/x11start
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
chmod +x /usr/local/bin/x11start
```

---
#### Run Termux-x11
- Start Termux-x11

In session 1(termux), run this command
```
x11start
```

In session 2 (linux), run this command
```
x11start
```

Open Termux-x11
</br>

---
- Stop Termux-x11

Close Termux-x11

In session 2 (linux), run this command
> Click Ctrl+c, enter (2X)

In session 1(termux), run this command
> x11stop
</br>

---
<p align="center">Good Luck</p>

---

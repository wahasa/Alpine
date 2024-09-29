<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
## Alpine on Termux Android

* Install Apps on Android
- [x] [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [x] [Termux-x11](https://github.com/termux/termux-x11/releases)

### Installation
Copy and paste this commands to Termux

#### Install Alpine (Distro)
> apt update

```
apt install proot-distro -y ; proot-distro install alpine
```

* Login Alpine
> proot-distro login alpine
* Logout Alpine
> exit

---
- Reinstall : proot-distro reset alpine
- Uninstall : proot-distro remove alpine

---
Basic commands Alpine
> apk update : Update list package.</br>
> apk upgrade : Upgrade package.</br>
> apk search (pkg) : Search package.</br>
> apk add (pkg) : Install package.</br>
> apk del (pkg) : Delete package.</br>

---
Feature

<details><summary><b><code>Fixed Sound Output</code></b></summary></br>

- In Termux, run this commands
> apt update

```
apt install pulseaudio nano -y
```
```
nano $PREFIX/bin/alpine
```

Copy Script
```
#!/bin/bash
pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1
proot-distro login alpine --shared-tmp
```
Save : ctrl + x, click y enter.

```
chmod +x $PREFIX/bin/alpine
```

---
<b>Login Alpine</b>
> alpine

<b>Logout Alpine</b>
> exit

---
- In Alpine,run this commands
```
echo "export PULSE_SERVER=127.0.0.1" > ~/.bashrc
```

---
</details>

<details><summary><b><code>Add New Username</code></b></summary></br>

In Alpine, run this commands
> apk add sudo

- Add Username
```
adduser <username>
```
```
passwd <username>
```
```
echo "<username>    ALL=(ALL)       ALL" >> /etc/sudoers
```
```
su <username>
```

- Del Username
```
deluser <username>
```

</br>
Note :</br>
(username) : Replace with your username.

---
- Login Username
```
su <username>
```

- Logout Username
```
exit
```

---
</details>

- [x] [Install Desktop Environment](https://github.com/wahasa/Alpine/tree/main?tab=readme-ov-file#install-desktop-environment)

- [x] [Run Desktop Environment](https://github.com/wahasa/Alpine/tree/main#run-desktop-environment)
</br>

---
<p align="center">Good Luck</p>

---

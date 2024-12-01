 <p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
#### PostmarketOS Distro on Termux Android
<img src="https://raw.githubusercontent.com/wahasa/Alpine/refs/heads/main/Distro/PostmarketOS-Distro.jpg">

* Install Apps on Android
- [x] [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [x] [Termux-x11](https://github.com/termux/termux-x11/releases)

---
Warning :</br>
This just adds the PosmarketOS repository to Alpine, but the underlying base is still Alpine.

---
#### Installation
Copy and paste this commands to Termux

- [x] Install Alpine (Distro)
> apt update

```
apt install proot-distro -y ; proot-distro install alpine
```

* Login Alpine
> proot-distro login alpine
* Logout Alpine
> exit

- Reinstall : proot-distro reset alpine
- Uninstall : proot-distro remove alpine

---
- [x] Add Repository

> Alpine 3.20 (Latest)</br>
> PostmarketOS 24.06 (Latest)

<b>In Alpine, run this commands</b>

- Edit Repository
```
rm -rf /etc/apk/repositories
```
```
nano /etc/apk/repositories
```

Copy Script
```
https://mirror.postmarketos.org/postmarketos/v24.06
https://dl-cdn.alpinelinux.org/alpine/v3.20/main
https://dl-cdn.alpinelinux.org/alpine/v3.20/community
```
Save : ctrl + x, click Y enter.

- Edit Os-release
```
rm -rf /etc/os-release
```
```
nano /etc/os-release
```

Copy Script
```
PRETTY_NAME="PostmarketOS 24.06 Linux"
NAME="PostmarketOS"
VERSION_ID="24.06"
VERSION="24.06"
ID=postmarketos
ID_LIKE=alpine
HOME_URL="https://postmarketos.org"
SUPPORT_URL="https://gitlab.postmarketos.org/postmarketOS"
BUG_REPORT_URL="https://gitlab.com/postmarketOS/pmaports/-/issues
ALPINE_VERSION="3.20"
LOGO=postmarketos-logo
```
Save : ctrl + x, click Y enter.

```
apk add -u --allow-untrusted postmarketos-keys
```
```
apk update ; apk upgrade
```

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

<b>In Termux, run this commands</b>
> apt update

- Edit Script
```
apt install pulseaudio nano -y
```
```
nano $PREFIX/bin/postmarketos
```

- Copy Script
```
#!/bin/bash
pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1
proot-distro login alpine --shared-tmp
```
Save : ctrl + x, click y enter.

- Activate script
```
chmod +x $PREFIX/bin/postmarketos
```

---
- Login PostmarketOS
> postmarketos

- Logout PostmarketOS
> exit

- Remove PostmarketOS
```
rm $PREFIX/bin/postmarketos ; pd remove alpine
```

---
<b>In Linux, run this command</b>
```
echo "export PULSE_SERVER=127.0.0.1" > ~/.bashrc
```

---
</details>

<details><summary><b><code>Add New Username</code></b></summary></br>

<b>In Linux, run this commands</b>
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

- Remove Username
```
deluser <username>
```

---
<b>In Termux, run this commands</b>
> apt install nano

- Edit Script
```
nano $PREFIX/bin/postmarketos
```
</br>

> proot-distro login alpine --shared-tmp

To

```
proot-distro login --user <username> alpine --shared-tmp
```
Save : ctrl + x, click y enter.

</br>
Note :</br>
(username) : Replace with your username.

---
- Login PostmarketOS
> postmarketos

- Logout PostmarketOS
> exit

- Remove PostmarketOS
```
rm $PREFIX/bin/postmarketos ; pd remove alpine
```
</details>

---
- [x] [Install Desktop Environments](https://github.com/wahasa/Alpine/tree/main#install-desktop-environments)

- [x] [Run Desktop Environments](https://github.com/wahasa/Alpine/tree/main#run-desktop-environments)
</br>

---
<p align="center">Good Luck</p>

---

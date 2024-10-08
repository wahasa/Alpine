<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
## Alpine on Termux Android
<img src="https://raw.githubusercontent.com/wahasa/Alpine/refs/heads/main/Patch/Alpine.jpg">

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

In Termux, run this commands
> apt update

```
apt install pulseaudio nano -y
```
```
nano $PREFIX/bin/alpine
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
chmod +x $PREFIX/bin/alpine
```

---
- Login Alpine
> alpine

- Logout Alpine
> exit

---
In Alpine,run this commands
```
echo "export PULSE_SERVER=127.0.0.1" > ~/.bashrc
```

---
</details>
<details><summary><b><code>Update Repository</code></b></summary></br>

In Alpine,run this commands
> apk add nano

```
rm -rf /etc/apk/repositories ; rm -rf /etc/os-release
```

- [x] Repo Alpine 3.20 (Latest)

- Edit Repo
```
nano /etc/apk/repositories
```

Copy Script
```
https://dl-cdn.alpinelinux.org/alpine/v3.20/main
https://dl-cdn.alpinelinux.org/alpine/v3.20/community
```
Save : ctrl + x, click Y enter.

- Edit Os-release
```
nano /etc/os-release
```

Copy Script
```
PRETTY_NAME="Alpine 3.20 Linux"
NAME="Alpine"
VERSION_ID="3.20"
VERSION="3.20"
ID=alpine
HOME_URL="https://alpinelinux.org"
DOCUMENTATION_URL="https://wiki.alpinelinux.org"
SUPPORT_URL="https://alpinelinux.org/community"
BUG_REPORT_URL="https://gitlab.alpinelinux.org/alpine/aports/-/issues"
PRIVACY_POLICY_URL="https://wiki.alpinelinux.org/wiki/Alpine_Linux:Privacy_policy"
LOGO=alpinelinux-logo
```
Save : ctrl + x, click Y enter.

```
apk update ; apk upgrade
```

- [x] List Repository | [Click Hare >](https://dl-cdn.alpinelinux.org/alpine)

---
</details>

---
- [x] [Install Desktop Environment](https://github.com/wahasa/Alpine/tree/main#install-desktop-environment)

- [x] [Run- Desktop Environment](https://github.com/wahasa/Alpine/tree/main#run-desktop-environment)
</br>

---
<p align="center">Good Luck</p>

---

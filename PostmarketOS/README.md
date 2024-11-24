<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
### PostmarketOS on Termux Android
<img src="https://raw.githubusercontent.com/wahasa/Alpine/refs/heads/main/Patch/PostmarketOS.jpg">

* Install Apps on Android
- [x] [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [x] [Termux-x11](https://github.com/termux/termux-x11/releases)

---
Warning :</br>
This just adds the PosmarketOS repository to Alpine, but the underlying base is still Alpine.

---
### Installation

Copy and paste this commands to Termux
> apt update

<details><summary><b><code>Install PostmarketOS</code></b></summary></br>

> apt install wget
- [x] PostmarketOS 24.06 (Latest-release)

Rootfs : Armhf, Arm64, i386, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Alpine/main/PostmarketOS/Install/postmarketos24.06.sh ; chmod +x postmarketos24.06.sh ; ./postmarketos24.06.sh
```

- [x] PostmarketOS 23.12 (Old-release)

Rootfs : Armhf, Arm64, i386, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Alpine/main/PostmarketOS/Install/postmarketos23.12.sh ; chmod +x postmarketos23.12.sh ; ./postmarketos23.12.sh
```

- [x] PostmarketOS 24.12 (Development)

Rootfs : Armhf, Arm64, i386, Amd64
```
wget https://raw.githubusercontent.com/wahasa/Alpine/main/PostmarketOS/Install/postmarketosdev.sh ; chmod +x postmarketosdev.sh ; ./postmarketosdev.sh
```
</details>

---
* Login PostmarketOS
```
postmarketos
```

* Logout PostmarketOS
```
exit
```

* Remove PostmarketOS
```
rm -rf postmarketos-fs .postmarketos $PREFIX/bin/postmarketos
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
- [x] [Install Desktop Environments](https://github.com/wahasa/Alpine/tree/main#install-desktop-environments)
- [x] [Run Desktop Environments](https://github.com/wahasa/Alpine/tree/main#run-desktop-environments)
</br>

---
<p align="center">Good Luck</p>

---

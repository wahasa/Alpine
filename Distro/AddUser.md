Add New Username

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
echo "<username>  ALL=(ALL:ALL) ALL" >> /etc/sudoers
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
nano $PREFIX/bin/alpine
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
- Login Alpine
> alpine

- Logout Alpine
> exit

- Remove Alpine
```
rm $PREFIX/bin/alpine ; pd remove alpine
```

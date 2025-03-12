### Add Username on Alpine
<img src="https://raw.githubusercontent.com/wahasa/Alpine/refs/heads/main/Patch/Username.jpg">

In Linux, run this commands
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
</br>

---
<p align="center">Good Luck</p>

---

### Add Username on Alpine

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
</br>

---
<p align="center">Good Luck</p>

---

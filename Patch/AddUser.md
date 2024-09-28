### Add Username on Alpine

In Alpine, run this commands
> apk add sudo

* Add Username
```
useradd <username>
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

* Del Username
```
userdel <username>
```

</br>
Note :</br>
(username) : Replace with your username.
</br></br>

---
<p align="center">Good Luck</p>

---

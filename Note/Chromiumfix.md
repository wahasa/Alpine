### Fixed Chromium Alpine
![Screenshot_2024-02-25-12-13-26-611_com realvnc viewer android](https://github.com/wahasa/Kali-Nethunter/assets/69626847/f1733632-66cb-48bc-abea-06b1452a8f8e)

---
* Install Chromium
> apk add chromium

* Uninstall Chromium
> apk del chromium

---
#### Fixed chromium can't be opened
on Alpine, run this commands

* Edit script
```
nano /usr/share/applications/chromium.desktop
```

* Add script
```
Exec=/usr/bin/chromium --no-sandbox --test-type %U
```

Save : ctrl + x, click Y enter.

Example :

![Screenshot_2024-03-07-14-53-47-408_com termux](https://github.com/wahasa/Alpine/assets/69626847/57c0f0cf-e94a-4cfc-9764-2de938e00e03)

* You can open chromium now.
</br>

---
#### How to change search engine

* Click the three dots on the right
* Select settings
* Click search engine on the left
* Select manage search engines & site
* Click Add (search engine)

Add search engine
> Search engine
```
Google
```

> Shortcut
```
Google.com
```

> URL with %s in place of query
```
https://google.com/search?q=%s
```

* Search saved search engines
* Click the three dots
* Slect Make default
* Close Chromium and open again
</br>

---
<p align="center">Good Luck</p>

---

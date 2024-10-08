<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/@layargeser">YouTube</a> |</b></p>

---
### Fixed Chromium on Alpine

* Install Chromium
> apk add chromium

* Uninstall Chromium
> apk del chromium

---
#### Fixed chromium not opening

In Linux, run this commands
> apk add nano

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
> Exec=/usr/bin/chromium --test-type %U

To

> Exec=/usr/bin/chromium --no-sandbox --test-type %U
`

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

### Fixed Firefox on Alpine
![firefox](https://github.com/wahasa/Project/assets/69626847/1a6adff8-986b-4d10-bf7a-33cc64aae616)

---
* Install Firefox
> apk add firefox-esr

* Uninstall Firefox
> apk del firefox-esr

---
#### Fixed firefox crash

* Open Firefox, fill address with :
```
about:config
```

* Click Button :
> Accept the Risk and Continue

* Search in box, fill with :
```
media.cubeb.sandbox
```

Click on the right to change 'true' to 'false'.

* Search in box again, fill with :
```
security.sandbox.content.level
```

Click edit on the right, change the number '4' to '0' and press again to save.

* Close and open again firefox.
</br>

---
<p align="center">Good Luck</p>

---

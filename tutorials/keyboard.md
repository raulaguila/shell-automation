# Config Ç

`'` + `c` vira `ç`

* In configurations set keyboard layout: `English (US, alt. intl.)`
* Open terminal (`Ctrl` + `Alt` + `T`)
* Run: `sudo nano /etc/environment`
* Add these two lines to the end of the file: 

```shell
GTK_IM_MODULE=cedilla
QT_IM_MODULE=cedilla
```

* Save with `Ctrl` + `o` and `Enter`
* Exit with `Ctrl` + `x`
* **Restart your computer** for the changes to take effect.
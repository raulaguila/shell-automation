# ⌨️ Fix Cedilla (ç) on Ubuntu (US International Keyboard)

If you are using an **English (US, alt. intl.)** keyboard layout and `' + c` results in `ć` instead of `ç`, follow one of the alternatives below to fix it.

## 🛠️ Alternative 1: System Environment Method (Recommended)

This method forces the GTK and QT modules to use the cedilla driver system-wide.

1.  **Set your Keyboard Layout:**
    Go to Settings > Keyboard and ensure it is set to `English (US, intl., with dead keys)`.

2.  **Edit the Environment file:**
    ```bash
    sudo nano /etc/environment
    ```

3.  **Add these lines at the end of the file:**
    ```text
    GTK_IM_MODULE=cedilla
    QT_IM_MODULE=cedilla
    ```

4.  **Save and Exit:**
    `Ctrl + O`, `Enter` to save, and `Ctrl + X` to exit.

5.  **Reboot:**
    Restart your computer for the changes to take effect.

---

## 🛠️ Alternative 2: XCompose Method (User Level)

If Alternative 1 doesn't work for specific apps, creating a Compose file usually solves it for the current user.

1.  **Create the .XCompose file:**
    ```bash
    nano ~/.XCompose
    ```

2.  **Paste the following content exactly as shown:**
    ```text
    include "%L"
    <dead_acute> <c> : "ç"
    <dead_acute> <C> : "Ç"
    ```

3.  **Save and Exit:**
    `Ctrl + O`, `Enter`, then `Ctrl + X`.

4.  **Restart Session:**
    Log out and log back in (or reboot) to apply.

## 💡 Troubleshooting

If `ç` still doesn't work in GTK3 apps (like Chrome or Firefox), you may need to run this command to update the immodules cache:
```bash
sudo sed -i 's/"cedilla"/"cedilla:en"/g' /usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/immodules.cache
```

---
*Target Layout: English (US, alt. intl.)*

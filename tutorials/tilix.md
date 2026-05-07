# 🖥️ Configure Tilix as Default Terminal on Ubuntu

Tilix is a powerful tiling terminal emulator that uses the GTK+ 3 widget toolkit. This guide explains how to install it and set it as your system's default terminal.

## 📥 Installation

First, update your package list and install Tilix:

```bash
sudo apt update && sudo apt install tilix -y
```

## ⚙️ Set as Default Terminal

To ensure Tilix opens when you use terminal shortcuts (like `Ctrl+Alt+T`), you need to update the Debian alternatives:

1. Run the following command:
   ```bash
   sudo update-alternatives --config x-terminal-emulator
   ```
2. You will see a list of installed terminals. 
3. Type the **Selection Number** corresponding to Tilix and press `<ENTER>`.

## 💡 Pro Tips

### 1. Fix VTE Configuration Issue
If you see a warning about "VTE Configuration", add the following line to your `~/.bashrc` (or `~/.zshrc`):

```bash
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte-2.91.sh
fi
```

### 2. Quake Mode
You can run Tilix in "Quake Mode" (dropping down from the top of the screen) by running:
```bash
tilix --quake
```

---
*Created for Ubuntu-based systems.*

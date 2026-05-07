# 🌐 Auto-display Local IP in Ubuntu Terminal

A simple hack to automatically display your local IP address (or connection status) every time you open a new terminal session.

## ⚙️ How to Configure

1.  **Open your Bash configuration file:**
    ```bash
    nano ~/.bashrc
    ```

2.  **Add this block at the very end of the file:**
    ```bash
    # --- Show Local IP ---
    IP=$(hostname -I | cut -d' ' -f1)
    if [ -z "$IP" ]; then
        echo -e "Status: \e[1;31mDisconnected\e[0m"
    else
        echo -e "Local IP: \e[1;32m$IP\e[0m"
    fi
    echo ""
    ```

3.  **Apply the changes:**
    ```bash
    source ~/.bashrc
    ```

## 📝 How it Works

*   **`hostname -I`**: Fetches all network IP addresses assigned to the host.
*   **`cut -d' ' -f1`**: Ensures only the primary IP is shown (useful if you use Docker or VMs).
*   **`if [ -z "$IP" ]`**: A logic gate that checks if you are offline.
*   **`ANSI Colors`**: 
    *   `\e[1;32m`: **Green** for connected.
    *   `\e[1;31m`: **Red** for disconnected.
    *   `\e[0m`: Resets the terminal color to default.

## 💡 Customization Pro-Tips

### 1. External (Public) IP
If you want to see your **Global Internet IP** (requires internet), add this line:
```bash
echo -e "Public IP: \e[1;34m$(curl -s https://ifconfig.me)\e[0m"
```

### 2. Add System Uptime
To see how long your PC has been running alongside the IP, add:
```bash
uptime -p
```

---
*Recommended for Ubuntu/Debian based distributions.*

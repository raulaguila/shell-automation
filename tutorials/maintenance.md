# 🧹 Ubuntu System Maintenance & Cleanup

Keep your Ubuntu system lean and fast by removing old packages, clearing caches, and managing system logs.

## 🛠️ Cleaning Commands

Run these periodically to reclaim disk space:

1.  **Remove unused packages and dependencies:**
    ```bash
    sudo apt autoremove -y
    ```

2.  **Clear the APT local repository cache:**
    ```bash
    sudo apt clean
    ```

3.  **Clear Systemd journal logs (keep only last 3 days):**
    ```bash
    sudo journalctl --vacuum-time=3d
    ```

## 📂 Advanced Cleanup

### Clean Thumbnail Cache
If your `~/.cache` folder is too large, clear the thumbnails:
```bash
rm -rf ~/.cache/thumbnails/*
```

### Remove Old Snap Versions
Snap keeps old versions of apps. Run this to see how much space they use:
```bash
du -h /var/lib/snapd/snaps
```

---
*Recommended for periodic system health checks.*

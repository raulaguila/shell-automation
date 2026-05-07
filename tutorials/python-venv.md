# 🐍 Python Virtual Environments (venv)

Keep your Python projects isolated to avoid dependency conflicts and system clutter.

## ⚙️ Setup

1. **Install venv support (Ubuntu only):**
   ```bash
   sudo apt install python3-venv -y
   ```

2. **Create a virtual environment:**
   ```bash
   python3 -m venv .venv
   ```

3. **Activate it:**
   * **Linux/macOS:** `source .venv/bin/activate`
   * **Windows:** `.venv\Scripts\activate`

## 🏁 Usage

Once activated, your terminal will show `(.venv)`. Any `pip install` will now stay inside this project folder.

**To exit:**
```bash
deactivate
```

---
*Never forget to add `.venv/` to your `.gitignore`!*

# 🐹 Configure Go (Golang) Environment Paths

A professional guide to setting up Go paths on **Ubuntu (Bash)** or **macOS (Zsh)** to ensure your binaries and workspace are correctly recognized.

## 📥 Prerequisites

1.  **Download and Install:** [Official Go Installer](https://go.dev/doc/install)
2.  **Verify default installation path:** 
    *   Standard: `/usr/local/go`

## ⚙️ Configuration

1.  **Open your Profile Configuration:**
    *   **Linux (Ubuntu):** `nano ~/.bashrc`
    *   **macOS:** `nano ~/.zshrc`

2.  **Append these lines at the end of the file:**
    ```bash
    # --- Go Language Setup ---
    export GOPATH=$HOME/go
    export GOBIN=$GOPATH/bin
    export GOROOT=/usr/local/go
    export PATH=$PATH:$GOROOT/bin:$GOBIN
    ```

3.  **Apply the changes:**
    *   **Linux:** `source ~/.bashrc`
    *   **macOS:** `source ~/.zshrc`

## 🏁 Verification

Restart your terminal or open a new tab and run:

```bash
go version
```

If configured correctly, it should return the installed version (e.g., `go version go1.x.x linux/amd64`).

## 💡 Troubleshooting

*   **Command not found:** Ensure `GOROOT` matches exactly where you installed Go. Use `ls /usr/local/go` to check if the folder exists.
*   **Permissions:** If you can't run binaries installed via `go install`, double-check if `$GOBIN` was correctly added to your `$PATH`.

---
*Maintained for Go developers using Bash/Zsh.*

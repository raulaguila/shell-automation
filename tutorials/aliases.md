# ⚡ Custom Terminal Aliases

Speed up your workflow by creating short aliases for long, repetitive commands.

## ⚙️ How to Configure

1.  **Open your aliases file (or .bashrc):**
    ```bash
    nano ~/.bash_aliases
    ```
    *Note: If using Zsh, use `nano ~/.zshrc` instead.*

2.  **Add your favorite shortcuts:**
    ```bash
    # Navigation
    alias ..="cd .."
    alias ...="cd ../.."

    # Git Shortcuts
    alias gs="git status"
    alias gp="git pull"
    alias gc="git commit -m"

    # System
    alias update="sudo apt update && sudo apt upgrade -y"
    alias myip="hostname -I | cut -d' ' -f1"
    ```

3.  **Apply changes:**
    ```bash
    source ~/.bashrc
    ```

---
*Pro-tip: Keep your aliases in a separate file like `~/.bash_aliases` to keep your `.bashrc` clean.*

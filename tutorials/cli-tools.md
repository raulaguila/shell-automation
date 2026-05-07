# 🔍 Interactive Search with fzf

`fzf` is a general-purpose command-line fuzzy finder. It allows you to find files, command history, and more with instant results as you type.

## 📥 Installation

### Linux (Ubuntu)
```bash
sudo apt install fzf -y
```

### macOS
```bash
brew install fzf
```

## 🚀 How to Use

*   **Find files:** Press `Ctrl + T` (lists files in current folder, select one to paste in terminal).
*   **Search History:** Press `Ctrl + R` (search through all your past commands visually).
*   **CD into subfolders:** Type `cd **` and press `Tab`.

---
*Pro-tip: Add `source /usr/share/doc/fzf/examples/key-bindings.zsh` to your `.zshrc` on Linux if shortcuts don't work.*


# 🔦 bat: a cat clone with wings

`bat` is a replacement for `cat` that adds syntax highlighting for a large number of programming and markup languages.

## 📥 Installation

### Linux (Ubuntu)
```bash
sudo apt install bat -y
```
*Note: On Ubuntu, the command is `batcat`. Add `alias bat='batcat'` to your `.bashrc` or `.zshrc` to use it as `bat`.*

### macOS
```bash
brew install bat
```

## 🚀 Why use it?

Instead of plain white text, `bat` shows code like this:
```bash
bat ~/.zshrc
```
It automatically detects the file type, shows line numbers, and indicates Git changes in the sidebar.

---

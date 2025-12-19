# Dotfiles

@hrittm's configuration files for Arch Linux

A comprehensive collection of configuration files (dotfiles) for a productive Arch Linux environment. These configurations are designed to work together seamlessly and provide a modern, efficient development setup.

## 📋 Contents

This repository includes configurations for:

- **Shell**: Bash and Zsh with sensible defaults and useful aliases
- **Git**: Enhanced git configuration with helpful aliases and color schemes
- **Editors**: Vim and Neovim with essential keybindings and settings
- **Terminal**: Alacritty terminal emulator with Nord color theme
- **Window Manager**: i3 tiling window manager with sensible keybindings
- **Multiplexer**: tmux with vim-like navigation and improved aesthetics
- **Scripts**: Installation script for easy deployment

## 🚀 Quick Start

### Prerequisites

Make sure you have git installed:
```bash
sudo pacman -S git
```

### Installation

1. Clone this repository:
```bash
git clone https://github.com/hrittm/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

2. Run the installation script:
```bash
./scripts/install.sh
```

The script will:
- Create backups of your existing configuration files
- Create symlinks from your home directory to the dotfiles
- Preserve any existing configurations in a timestamped backup folder

3. Update Git configuration with your details:
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

4. Restart your shell or source the configuration:
```bash
source ~/.bashrc  # or ~/.zshrc if using zsh
```

## 📁 Structure

```
dotfiles/
├── alacritty/          # Alacritty terminal emulator configuration
│   └── alacritty.yml
├── bash/               # Bash shell configuration
│   ├── .bashrc
│   └── .bash_profile
├── git/                # Git configuration and global gitignore
│   ├── .gitconfig
│   └── .gitignore_global
├── i3/                 # i3 window manager configuration
│   └── config
├── nvim/               # Neovim configuration
│   └── init.lua
├── scripts/            # Utility scripts
│   └── install.sh
├── tmux/               # tmux terminal multiplexer configuration
│   └── .tmux.conf
├── vim/                # Vim editor configuration
│   └── .vimrc
├── zsh/                # Zsh shell configuration
│   └── .zshrc
├── LICENSE
└── README.md
```

## ⚙️ Configuration Details

### Shell (Bash/Zsh)

Both shells are configured with:
- Extended history settings
- Color support for ls, grep, and other commands
- Useful aliases for system management (update, install, remove)
- Git aliases for common operations
- Custom prompt
- Completion enhancements

**Common Aliases:**
- `ll` - detailed list view
- `update` - system update (pacman -Syu)
- `install` - install package (pacman -S)
- `gs` - git status
- `gl` - git log with graph

### Git

Features:
- Colorful output for better readability
- Useful aliases (st, co, br, lg, tree)
- Global gitignore for common files
- Smart defaults for push/pull behavior

### Vim/Neovim

Configured with:
- Line numbers (relative and absolute)
- Smart indentation (4 spaces)
- Search improvements (incremental, highlight)
- Split navigation with Ctrl+hjkl
- Leader key set to Space
- Sensible defaults for modern editing

### Alacritty

A fast, GPU-accelerated terminal emulator with:
- Nord color theme
- Optimized font settings
- 95% opacity for aesthetics
- Sensible key bindings

### i3 Window Manager

Tiling window manager configuration:
- Mod key set to Super (Windows key)
- Vim-like navigation (hjkl)
- Workspace management
- Custom color scheme (Dracula-inspired)
- Status bar with i3status

**Key Bindings:**
- `Mod+Return` - Open terminal
- `Mod+d` - Application launcher
- `Mod+hjkl` - Navigate windows
- `Mod+1-9` - Switch workspaces
- `Mod+Shift+q` - Close window

### tmux

Terminal multiplexer with:
- Prefix changed to Ctrl+a
- Vim-like pane navigation
- Mouse support
- Better status bar
- Improved visual styling

## 🔧 Customization

Feel free to customize any configuration to match your preferences:

1. **Colors**: Most configs use similar color schemes that can be easily modified
2. **Keybindings**: All keybindings are clearly commented and can be adjusted
3. **Features**: Enable/disable features by commenting/uncommenting lines

## 📦 Recommended Packages

To get the most out of these configurations, install these packages:

```bash
# Essential
sudo pacman -S base-devel git vim neovim

# Shell
sudo pacman -S bash zsh bash-completion

# Terminal
sudo pacman -S alacritty

# Window Manager
sudo pacman -S i3-wm i3status dmenu

# Terminal Multiplexer
sudo pacman -S tmux

# Additional tools
sudo pacman -S xclip      # Clipboard support
sudo pacman -S nitrogen   # Wallpaper setter
sudo pacman -S rofi       # Better application launcher
```

## 🔄 Updating

To update your dotfiles:

```bash
cd ~/.dotfiles
git pull origin main
./scripts/install.sh
```

## 🤝 Contributing

Feel free to submit issues and enhancement requests! Contributions are welcome.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 💡 Tips

- **Shell Selection**: Edit `.bash_profile` or use `chsh` to change your default shell
- **Window Manager**: Copy the i3 config and customize workspace assignments for your workflow
- **Terminal Colors**: The Nord theme is used consistently; you can change it to any theme you prefer
- **Font**: Install a nerd font for better icon support in terminal and editors

## 📚 Resources

- [Arch Wiki - Dotfiles](https://wiki.archlinux.org/title/Dotfiles)
- [i3 User Guide](https://i3wm.org/docs/userguide.html)
- [tmux Guide](https://github.com/tmux/tmux/wiki)
- [Alacritty Configuration](https://github.com/alacritty/alacritty)

---

Made with ❤️ for Arch Linux users

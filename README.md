# Overview

This directory is the config portion of a personal [Arch](https://archlinux.org/) + [Hyprland](https://hypr.land/) dotfiles setup.
It is focused on a minimal, aesthetic Wayland desktop with a few supporting tools:

- Hyprland for the compositor and window management
- Waybar for the panel/status bar
- Kitty as the terminal
- Rofi as the application launcher
- Fish as the shell
- GTK/Qt, Dolphin, and related desktop integration files for consistency across apps

The goal is to keep the desktop lightweight, readable, and easy to extend.

> [!WARNING]
> Still in progress.

## Current Layout

The structure below reflects the files that exist now, plus a few planned placeholders.

```text
dotfiles/
├── .config/
│   ├── .vscode/
│   │   └── settings.json
│   ├── Code/
│   │   └── User/
│   │       └── settings.json
│   ├── fish/
│   │   └── config.fish
│   ├── gh/
│   │   ├── config.yml
│   │   └── hosts.yml
│   ├── gtk-3.0/
│   │   └── settings.ini
│   ├── gtk-4.0/
│   │   └── settings.ini
│   ├── hypr/
│   │   ├── hyprland.lua
│   │   └── lua/
│   │       ├── animations.lua
│   │       ├── autostart.lua
│   │       ├── decoration.lua
│   │       ├── env.lua
│   │       ├── input.lua
│   │       ├── keybinds.lua
│   │       ├── misc.lua
│   │       ├── monitors.lua
│   │       ├── rules.lua
│   │       ├── settings.lua
│   │       └── variables.lua
│   ├── kitty/
│   │   └── kitty.conf
│   ├── mimeapps.list
│   ├── mozilla/
│   │   └── firefox/
│   │       └── profiles.ini
│   ├── pulse/
│   │   └── cookie
│   ├── rofi/
│   │   └── config.rasi
│   ├── session/
│   ├── speech-dispatcher/
│   │   ├── clients/
│   │   │   └── emacs.conf
│   │   ├── desktop/
│   │   │   └── speechd.desktop
│   │   ├── modules/
│   │   │   ├── cicero.conf
│   │   │   ├── espeak-ng-mbrola.conf
│   │   │   ├── espeak-ng.conf
│   │   │   ├── espeak.conf
│   │   │   └── festival.conf
│   │   └── speechd.conf
│   ├── waybar/
│   │   ├── config.jsonc
│   │   └── style.css
│   └── yay/
│       └── config.json
├── home/
│   ├── .bash_profile
│   ├── .bashrc
│   └── .gitconfig
├── .gitignore
├── LICENSE
└── README.md
```

## Tech Stack

- OS: Arch Linux
- Display stack: Wayland + Hyprland
- Panel: Waybar
- Terminal: Kitty
- Launcher: Rofi
- Shell: Fish
- File manager: Dolphin
- Desktop integration: GTK, Qt, `mimeapps.list`, `systemd --user`
- Editor integration: VS Code workspace settings for Lua and CSS validation

## Components

### Hyprland

The Hyprland config is split into small Lua modules under `hypr/lua/`.
That keeps compositor behavior easy to maintain:

- `settings.lua` for compositor behavior
- `animations.lua` for animation curves and timings
- `monitors.lua` for display setup
- `input.lua` for keyboard and pointer settings
- `decoration.lua` for visual styling
- `keybinds.lua` for bindings and launchers
- `rules.lua` for window rules
- `autostart.lua` for session startup
- `env.lua` for environment variables and Wayland defaults
- `variables.lua` for reusable app paths and launcher commands

### Waybar

Waybar is used as the top panel with modules for:

- workspaces
- clock
- weather
- power profile status
- bluetooth
- backlight
- battery
- CPU and memory
- audio input/output
- tray
- media controls

### App Defaults

- `fish/config.fish` sets shell environment and PATH basics
- `kitty/kitty.conf` sets a clean terminal baseline
- `rofi/config.rasi` sets a minimal launcher theme
- `mimeapps.list` defines file handler defaults
- `gtk-3.0/settings.ini` and `gtk-4.0/settings.ini` keep GTK apps aligned
- `gh/config.yml` stores GitHub CLI preferences and is treated as user state

## Installation

This repository is intended to be installed by syncing or symlinking files into `~/.config` and `~/`.

Quick install example:

```bash
mkdir -p ~/.config
cp -r dotfiles/.config/* ~/.config/
```

If you prefer symlinks:

```bash
ln -sfn "$PWD/.config/hypr" ~/.config/hypr
ln -sfn "$PWD/.config/waybar" ~/.config/waybar
ln -sfn "$PWD/.config/kitty" ~/.config/kitty
ln -sfn "$PWD/.config/rofi" ~/.config/rofi
ln -sfn "$PWD/.config/fish" ~/.config/fish
```

For a full dotfiles repo, you can later add `home/` files with the same approach.

## Dependencies

Core packages for this setup:

- `hyprland`
- `waybar`
- `kitty`
- `rofi`
- `fish`
- `dolphin`
- `pipewire`, `wireplumber`, `pipewire-pulse`
- `brightnessctl`
- `playerctl`
- `grim`
- `slurp`
- `wl-clipboard`
- `pavucontrol`
- `pamixer`
- `nm-applet`
- `hyprpaper`
- `hypridle`
- `dunst`
- `gnome-keyring`

Optional extras used by some modules:

- `wttrbar`
- `waybar-module-pacman-updates`
- `cliphist`

## Customization

Common places to adjust the setup:

- Update app paths in `hypr/lua/variables.lua`
- Tune keybinds in `hypr/lua/keybinds.lua`
- Change monitor behavior in `hypr/lua/monitors.lua`
- Adjust look and feel in `hypr/lua/decoration.lua` and `waybar/style.css`
- Edit Waybar modules in `waybar/config.jsonc`
- Change shell defaults in `fish/config.fish`
- Change file associations in `mimeapps.list`
- Modify GTK defaults in `gtk-3.0/settings.ini` and `gtk-4.0/settings.ini`

## Usage

- Start Hyprland from your display manager or TTY session
- The session autostart script launches Waybar, Hyprpaper, Hypridle, Dunst, NetworkManager applet, and gnome-keyring if installed
- Waybar reads its JSONC config and style from the `waybar/` directory
- Rofi can be launched through the Hyprland launcher binding

## Notes

- `profiles.ini` and `installs.ini` under Firefox are intentionally ignored now because they are machine-specific registry files, not portable dotfiles.
- `gh/` and `dconf/` are ignored because they contain user/session state and binary settings data.
- Some future files like `tmux.conf` are intentionally missing for now but can be added later. The `.bashrc`, `.bash_profile`, and `.gitconfig` files are now present in the `home/` directory.
# Dotfiles

My personal dotfiles for my Linux development environment.

## Configurations

* **Sway** — Window manager
* **Waybar** — Status bar
* **Wofi** — Application launcher
* **Kitty** — Terminal emulator
* **Zsh** — Shell
* **Neovim** — Text editor

## Structure

```text
dotfiles/
├── .config/
│   ├── sway/
│   │   └── config
│   ├── waybar/
│   │   ├── config
│   │   └── style.css
│   └── wofi/
│       ├── config
│       └── style.css
├── kitty/
│   └── kitty.conf
├── zsh/
│   └── .zshrc
└── nvim/
    ├── init.vim
    ├── keys.vim
    └── plugin.vim
```

## Packages

```bash
sudo apt update

sudo apt install -y \
    sway \
    swaybg \
    swaylock \
    waybar \
    wofi \
    kitty \
    brightnessctl \
    pulseaudio-utils \
    zsh \
    neovim \
    wev
```

## Setup

Clone:

```bash
git clone git@github-personal:Atulkumar112/dotfiles.git
cd dotfiles
```

Create config directory:

```bash
mkdir -p ~/.config
```

### Sway

```bash
ln -s ~/dotfiles/.config/sway ~/.config/sway
```

### Waybar

```bash
ln -s ~/dotfiles/.config/waybar ~/.config/waybar
```

### Wofi

```bash
ln -s ~/dotfiles/.config/wofi ~/.config/wofi
```

### Kitty

```bash
ln -s ~/dotfiles/kitty ~/.config/kitty
```

### Zsh

```bash
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
```

### Neovim

```bash
ln -s ~/dotfiles/nvim ~/.config/nvim
```

## Notes

These are my personal configurations and may require some changes depending on your system.
* Sway uses **Kitty** as the terminal.
* Personal GitHub repositories use the `github-personal` SSH alias.
* Do not commit secrets or machine-specific files.

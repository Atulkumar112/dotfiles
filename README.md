# Dotfiles

My personal dotfiles for my development environment.

## Configurations

* **Kitty** — Terminal emulator
* **Zsh** — Shell
* **Neovim** — Text editor configured using Vimscript

## Structure

```
dotfiles/
├── kitty/
│   └── kitty.conf
├── zsh/
│   └── .zshrc
└── nvim/
    ├── init.vim
    ├── keys.vim
    └── plugin.vim
```

## Setup

Clone the repository:

```
git clone https://github.com/Atulkumar112/dotfiles.git
cd dotfiles
```

### Kitty

```
ln -s ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
```

### Zsh

```
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
```

### Neovim

```
ln -s ~/dotfiles/nvim ~/.config/nvim
```

## Note

These are my personal configurations and may require some changes depending on your system.

Feel free to use, modify, and customize them.

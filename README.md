# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
pacman -S git
```

### Stow

```
pacman -S stow
```

## Neovim Dependencies

To use the Neovim configuration successfully, install the following:

### ripgrep

Ripgrep is required for the Telescope fuzzy live_grep search functionality in Neovim.

```
pacman -S ripgrep
```

### unzip

Unzip is required for unzipping archives during lazy installation processes.

```
pacman -S unzip
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone https://github.com/mhdZhHan/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

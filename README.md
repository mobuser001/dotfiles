# Dotfiles

## Setup OS X

```bash
xcode-select --install # install command line developer tools
git clone git@github.com:RobertBrewitz/dotfiles.git
cd dotfiles
sh osx.sh
```

## Setup ChromeOS

### Prerequisite

Activate developer mode on your Chromebook.

[Chromium Documentation](https://www.chromium.org/chromium-os/developer-information-for-chrome-os-devices/generic)

### Setup

Open crosh (terminal) with alt+ctrl+T in the Chrome browser

```bash
shell # to enter bash
git clone git@github.com:RobertBrewitz/dotfiles.git
cd dotfiles
sh chronos.sh
```

## Setup Windows 10 WSL

### Prerequisite

Activate developer mode on your Windows and install Ubuntu WSL.

### Setup

Open Ubuntu WSL

```bash
git clone git@github.com:RobertBrewitz/dotfiles.git
cd dotfiles
sh wsl.sh
```

## Setup Ubuntu

### Setup

Open terminal

```bash
apt-get update # optional
apt-get upgrade # optional
git clone git@github.com:RobertBrewitz/dotfiles.git
cd dotfiles
sh ubuntu.sh
```

## .gitconfig

Update .gitconfig email, user, and username.

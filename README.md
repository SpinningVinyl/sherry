# Sherry

This is my attempt at creating a script that can automatically set up my terminal environment. It basically installs a bunch of stuff (mostly dev-related) using `zypper` and makes some sane configuration changes.

Despite its many shortcomings (I am not really a shell scripting guru), it does what it's supposed to.

## Prerequisites

The script is supported only on openSUSE Tumbleweed. `bash` is the only supported shell. The following commands need to be available for the installation script to work:

- `git`;
- `getent`;
- `sudo`;
- `id`.

## Installation

```bash
git clone https://github.com/SpinningVinyl/sherry.git
cd sherry
./install
```

Do not delete the directory after the installation since it symlinks config files to the user folder and sources files in the `shell` subdirectory from `.bashrc`. On my machines, **sherry** typically lives in `~/.config`.

## Precautions and known issues

1. Do not run the installer via a symlink.

2. If FZF installation fails for some reason, you will have to install it manually by following the official setup guide. 

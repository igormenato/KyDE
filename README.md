# KyDE Dotfiles 1.0.0

KyDE is a complete Hyprland configuration focused on minimalism and a tiling window management workflow. It includes dotfiles and setup scripts to provide a ready-to-use Wayland desktop on supported Linux distributions.

## Requirements

Ths script supports the following distributions:

- Arch Linux
- Fedora Linux
- Nobara Linux

## Installation

KyDE can be installed on real hardware (bare metal) or tested in a virtual machine using QEMU/KVM with 3D acceleration enabled.

Before starting, make sure you have a minimal installation of Arch, Fedora, or Nobara Linux with internet access and a working user account.

```
bash <(curl -s https://raw.githubusercontent.com/igormenato/KyDE/main/setup.sh)
```

> Hyprland does not officially support NVIDIA hardware. But many users have reported a successful installation. Please read: https://wiki.hyprland.org/Nvidia/

## Packages

The script will install the following packages and the corresponding configurations:

- Window Manager: hyprland
- Status Bar: waybar
- Launcher: tofi
- Browser: firefox
- Terminal: kitty
- Notification Service: dunst
- File Manager: dolphin
- Idle Manager: hypridle
- Lock screen: hyprlock
- xdg-desktop-portal-hyprland
- qt5-wayland
- qt6-wayland

You can find all shipped configurations here: https://github.com/igormenato/KyDE/tree/main/dotfiles

## Acknowledgments

This project is based on [hyprland-starter](https://github.com/mylinuxforwork/hyprland-starter/) and [simple-hyprland](https://github.com/gaurav23b/simple-hyprland), which provided excellent foundations for creating this Hyprland-based desktop environment.

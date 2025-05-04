installer_packages=(
    # Desktop Environment / Window Manager
    "hyprland"
    "xdg-desktop-portal-hyprland"
    "hyprlock"
    "hypridle"
    "hyprpicker"
    "sddm"
    "polkit-kde-agent"

    # File Manager
    "dolphin"

    # Terminals and Utils
    "fish"
    "fisher"
    "mise"
    "kitty"

    # Status Bar / Notifications
    "waybar"
    "dunst"

    # Audio
    "pipewire"
    "wireplumber"
    "pamixer"

    # Networking
    "networkmanager"

    # Screenshot Tools
    "grim"
    "slurp"

    # Utilities
    "swww"
    "cliphist"
    "bat"
    "eza"
    "brightnessctl"
    "fd"
    "fastfetch"
    "fuse2"
    "fzf"
    "jq"
    "ripgrep"
    "ydotool"

    # Text Editor
    "neovim"

    # Web Browser
    "firefox"

    # Appearance / Theming
    "nwg-look"
    "qt5ct"
    "qt6ct"
    "kvantum"

    # QT Support
    "qt5-wayland"
    "qt6-wayland"
    "qt6-svg"
    "qt6-declarative"
    "qt5-quickcontrols2"

    # GTK / Libadwaita Support
    "gtk4"
    "libadwaita"
    "python-gobject"

    # Fonts
    "ttf-cascadia-code-nerd"
    "ttf-cascadia-mono-nerd"
    "ttf-fira-code"
    "ttf-fira-mono"
    "ttf-fira-sans"
    "ttf-firacode-nerd"
    "ttf-iosevka-nerd"
    "ttf-iosevkaterm-nerd"
    "ttf-jetbrains-mono-nerd"
    "ttf-jetbrains-mono"
    "ttf-font-awesome"
    "ttf-nerd-fonts-symbols"
    "ttf-nerd-fonts-symbols-mono"
)

installer_yay=(
    "kvantum-theme-catppuccin-git"
    "wlogout"
    "tofi"
    "hyprshot"
)

# PLEASE NOTE: Add more packages at the end of the following command
_installPackages "${installer_packages[@]}";
_installPackagesYay "${installer_yay[@]}";

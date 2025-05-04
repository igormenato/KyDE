# Remove existing symlinks
for df in "${backup_files[@]}"
do
    if [ -L "${df}" ]; then
        rm ${df}
        echo ":: Symlink $df removed"
    fi
done

# Copy configuration to dotfiles folder
if [ -f ~/KyDE-excludes.txt ] ;then
    echo ":: Exclude file for rsync found"
    rsync -avhp -I --exclude-from=~/KyDE-excludes.txt ~/KyDE/$version/ ~/
else
    rsync -avhp -I ~/KyDE/$version/ ~/
fi
echo ":: Dotfiles installed in ~/.config/"

# Install SDDM theme
echo ":: Installing Catppuccin Mocha SDDM theme..."
unzip ~/.config/KyDE/assets/themes/sddm-catppuccin-mocha.zip /usr/share/sddm/themes/

# Install GTK and icon themes
echo ":: Installing Catppuccin Mocha GTK theme..."
tar -xvf ~/.config/KyDE/assets/themes/Catppuccin-Mocha.tar.xz -C /usr/share/themes/

echo ":: Installing Tela Circle Dracula icon theme..."
tar -xvf ~/.config/KyDE/assets/icons/Tela-circle-dracula.tar.xz -C /usr/share/icons/

# Add instructions to configure theming
print_info "\nPost-installation instructions:"
print_bold_blue "Set themes and icons:"
echo "   - Run 'nwg-look' and  set the global GTK and icon theme"
echo "   - Open 'kvantummanager' (run with sudo for system-wide changes) to select and apply the Catppuccin theme"
echo "   - Open 'qt6ct' to set the icon theme"
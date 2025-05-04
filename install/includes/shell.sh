# Install Oh My Fish and the robbyrussell theme
echo ":: Installing robbyrussell fish theme..."
fish -c "fisher install oh-my-fish/theme-robbyrussell"

# Set Fish as the default shell
echo ":: Setting Fish as the default shell..."
chsh -s /usr/bin/fish
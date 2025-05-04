if [ ! -d ~/KyDE ] ;then
    mkdir ~/KyDE
fi
if [ -d ~/KyDE/$version ] ;then
    rm -rf ~/KyDE/$version
fi
cp -r dotfiles ~/KyDE/$version
echo ":: KyDE Hyprland Dotfiles configuration prepared in ~/KyDE/$version"
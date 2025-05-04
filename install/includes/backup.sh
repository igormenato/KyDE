backup_files=(
    ".config/dunst"
    ".config/fish"
    ".config/hypr"
    ".config/kitty"
    ".config/KyDE"
    ".config/nvim"
    ".config/tofi"
    ".config/waybar"
    ".config/wlogout"
    "dolphinrc"
    ".bashrc"
)

echo -e "${GREEN}"
figlet "Backup"
echo -e "${NONE}"
echo "The script can create a backup of you existing configurations in .config and your .bashrc"
if gum confirm "Do you want to create a backup now" ;then

    # Create KyDE folder
    if [ ! -d ~/KyDE ] ;then
        mkdir ~/KyDE
    fi

    # Get current timestamp
    datets=$(date '+%Y%m%d%H%M%S')

    # Create backup folder
    if [ ! -d ~/KyDE/archive ] ;then
        mkdir ~/KyDE/archive
    fi

    # Create backup folder
    if [ ! -d ~/KyDE/backup ] ;then
        mkdir ~/KyDE/backup
    else
        mkdir ~/KyDE/archive/$datets
        cp -r ~/KyDE/backup/. ~/KyDE/archive/$datets/
    fi

    for df in "${backup_files[@]}"
    do
        if [ -d ~/$df ] ;then
            echo ":: Backup of $df"
            mkdir -p ~/KyDE/backup/$df
            cp -r ~/$df ~/KyDE/backup/$df
        fi
        if [ -f ~/$df ] && [ ! -L "${df}" ] ;then
            echo ":: Backup of $df"
            cp ~/$df ~/KyDE/backup/$df
        fi
    done
elif [ $? -eq 130 ]; then
    echo ":: Installation canceled"
    exit 130
else
    echo ":: Backup skipped"
fi
echo ":: Enabling SDDM service..."
# Use sudo for system service operations
sudo systemctl enable sddm.service

# Set SDDM theme
SDDM_CONF="/etc/sddm.conf"
THEME_SECTION="[Theme]"
THEME_LINE="Current=catppuccin-mocha"

# Function to modify or append the theme section
update_theme() {
    if sudo grep -q "^\[Theme\]" "$SDDM_CONF"; then
        # If [Theme] exists, update the Current= line or add it
        if sudo grep -q "^Current=" "$SDDM_CONF"; then
            sudo sed -i "/^\[Theme\]/,/^\[.*\]/ s/^Current=.*/$THEME_LINE/" "$SDDM_CONF"
        else
            sudo sed -i "/^\[Theme\]/a $THEME_LINE" "$SDDM_CONF"
        fi
    else
        # Add [Theme] section at the end if not found
        echo -e "\n$THEME_SECTION\n$THEME_LINE" | sudo tee -a "$SDDM_CONF" >/dev/null
    fi
}

# Check if SDDM conf directory exists, create if needed
SDDM_CONF_DIR="/etc/sddm.conf.d"
if [ ! -d "$SDDM_CONF_DIR" ]; then
    sudo mkdir -p "$SDDM_CONF_DIR"
fi

# Main logic
if [ -f "$SDDM_CONF" ]; then
    update_theme
else
    echo -e "$THEME_SECTION\n$THEME_LINE" | sudo tee "$SDDM_CONF" >/dev/null
fi

echo ":: SDDM theme set to catppuccin-mocha."
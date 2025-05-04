echo ":: Enabling SDDM service..."
systemctl enable sddm.service

# Set SDDM theme
SDDM_CONF="/etc/sddm.conf"
THEME_SECTION="[Theme]"
THEME_LINE="Current=catppuccin-mocha"

# Function to modify or append the theme section
update_theme() {
    if grep -q "^\[Theme\]" "$SDDM_CONF"; then
        # If [Theme] exists, update the Current= line or add it
        if grep -q "^Current=" "$SDDM_CONF"; then
            sed -i "/^\[Theme\]/,/^\[.*\]/ s/^Current=.*/$THEME_LINE/" "$SDDM_CONF"
        else
            sed -i "/^\[Theme\]/a $THEME_LINE" "$SDDM_CONF"
        fi
    else
        # Add [Theme] section at the end if not found
        echo -e "\n$THEME_SECTION\n$THEME_LINE" >> "$SDDM_CONF"
    fi
}

# Main logic
if [ -f "$SDDM_CONF" ]; then
    update_theme
else
    echo -e "$THEME_SECTION\n$THEME_LINE" > "$SDDM_CONF"
fi

echo ":: SDDM theme set to catppuccin-mocha."
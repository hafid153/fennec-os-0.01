#!/bin/bash
# Simple installer for the current user

THEME_NAME="Fennec"
DEST="$HOME/.themes/$THEME_NAME"

# Crée le dossier si besoin
mkdir -p "$HOME/.themes"

# Copie le thème
cp -r "$(dirname "$0")" "$DEST"

# Applique le thème pour MATE
gsettings set org.mate.interface gtk-theme "$THEME_NAME"
gsettings set org.mate.Marco.general theme "$THEME_NAME"

# Message de fin
echo "Copied theme to $DEST"
echo "Open 'Appearance' -> 'Theme' and select '$THEME_NAME' (GTK theme)"

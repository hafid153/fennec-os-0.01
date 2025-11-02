#!/bin/bash
# Simple installer for the current user
DEST="$HOME/.themes/Fennec"
mkdir -p "$HOME/.themes"
cp -r "$(dirname "$0")" "$DEST"
gsettings set org.mate.interface gtk-theme "Fennec-MATE" \
gsettings set org.mate.Marco.general theme "Fennec-MATE"
echo "Copied theme to $DEST"
echo "Open Appearance -> Theme and select Fennec (GTK theme)"

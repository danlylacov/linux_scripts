#!/bin/bash

APPIMAGE="$1"

if [ -z "$APPIMAGE" ]; then
    echo "Использование: $0 файл.AppImage"
    exit 1
fi

FULL_PATH=$(realpath "$APPIMAGE")
NAME=$(basename "$APPIMAGE" | sed 's/\.AppImage//' | sed 's/\.appimage//')

chmod +x "$FULL_PATH"

mkdir -p ~/.local/share/applications

cat > ~/.local/share/applications/"$NAME.desktop" << EOF
[Desktop Entry]
Name=$NAME
Exec=$FULL_PATH
Icon=applications-other
Terminal=false
Type=Application
Categories=Utility;
EOF

chmod +x ~/.local/share/applications/"$NAME.desktop"
update-desktop-database ~/.local/share/applications/ 2>/dev/null

echo "Готово! $NAME добавлен в меню"

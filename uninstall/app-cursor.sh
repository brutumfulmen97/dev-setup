uninstallCursor() {
    echo "Uninstalling Cursor AI IDE..."

    # Define paths (same as in install script)
    APPIMAGE_PATH="/opt/cursor.appimage"
    ICON_PATH="/opt/cursor.png"
    DESKTOP_ENTRY_PATH="/usr/share/applications/cursor.desktop"

    # Remove AppImage
    if [ -f "$APPIMAGE_PATH" ]; then
        sudo rm "$APPIMAGE_PATH"
        echo "Removed Cursor AppImage"
    fi

    # Remove icon
    if [ -f "$ICON_PATH" ]; then
        sudo rm "$ICON_PATH"
        echo "Removed Cursor icon"
    fi

    # Remove desktop entry
    if [ -f "$DESKTOP_ENTRY_PATH" ]; then
        sudo rm "$DESKTOP_ENTRY_PATH"
        echo "Removed desktop entry"
    fi

    echo "Cursor AI IDE has been uninstalled successfully."
}

uninstallCursor
sudo rm -rf ./squashfs-root || true
sudo rm -rf /opt/cursor || true
sudo rm -f /usr/share/applications/cursor.desktop || true
sudo rm -f cursor-*.AppImage

curl -JLO https://downloader.cursor.sh/linux/appImage/x64

chmod +x ./cursor-*.AppImage
./cursor-*.AppImage --appimage-extract
rm ./cursor-*.AppImage
sudo mv ./squashfs-root /opt/cursor
sudo chown -R root: /opt/cursor
sudo chmod 4755 /opt/cursor/chrome-sandbox
sudo find /opt/cursor -type d -exec chmod 755 {} \;
sudo chmod 644 /opt/cursor/cursor.png

cat > cursor.desktop <<EOL
[Desktop Entry]
Name=Cursor AI IDE
Exec=/opt/cursor/AppRun
Icon=/opt/cursor/cursor.png
Type=Application
Categories=Development;
EOL

sudo chown root: cursor.desktop
sudo chmod 644 cursor.desktop
sudo mv cursor.desktop /usr/share/applications
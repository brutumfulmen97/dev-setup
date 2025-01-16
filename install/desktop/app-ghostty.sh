sudo apt install libgtk-4-dev libadwaita-1-dev
sudo snap install --beta zig --classic
wget https://github.com/ghostty-org/ghostty/archive/refs/tags/v1.0.1.tar.gz
tar -xf v1.0.1.tar.gz
cd ghostty-1.0.1
sudo zig build -p /usr -Doptimize=ReleaseFast
sudo update-desktop-database
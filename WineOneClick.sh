#!/usr/bin/bash
sudo apt update
sudo apt upgrade -y
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key

# Debian Testing(Trixie)
# sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/trixie/winehq-trixie.sources

# Debian 12 Latest(Bookworm)
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources

# Debian 11(Bullseye)
# sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bullseye/winehq-bullseye.sources

sudo apt update

# Wine-Stable
sudo apt install --install-recommends winehq-stable -y

# Wine-Devel
# sudo apt install --install-recommends winehq-devel -y

# Wine-Staging
# sudo apt install --install-recommends winehq-staging -y

# Installing Winetricks
wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
sudo mv winetricks /usr/bin/winetricks
sudo chmod +x /usr/bin/winetricks

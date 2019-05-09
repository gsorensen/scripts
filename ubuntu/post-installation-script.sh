# Post installation script for Ubuntu 18.04 
# (No reason why it shouldn't work with Mint either, though the NVidia drivers might already be configured)
# Run with sudo permission
#
# Works as of the 9th of May 2019

PACKAGE_MANAGER="apt"
NVIDIA_DRIVER_VER=

# Updating any packages 
echo "Updating and upgrading packages..."
sudo $PACKAGE_MANAGER update && sudo $PACKAGE_MANAGER upgrade

# Installing git
echo "Installing Git..."
sudo apt install git

echo "Installing NVidia drivers..."
sudo apt install nvidia-$NVIDIA_DRIVER_VER

echo "Installing Spotify Client from repo (not snap)..."
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90 &&
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list &&
sudo apt update && 
sudo apt install spotify-client

echo "Installing flat remix icon theme..."
cd /tmp && rm -rf flat-remix &&
git clone https://github.com/daniruiz/flat-remix &&
mkdir -p ~/.icons && cp -r flat-remix/Flat-Remix* ~/.icons/ &&
gsettings set org.gnome.desktop.interface icon-theme "Flat-Remix"
cd ..

echo "Installing Aureola Acros conky with custom conky.conf in var-config-scripts folder..." &&
cd /tmp && rm -rf Aureola &&  git clone https://github.com/erikdubois/Aureola && cd Aureola
./get-aureola-from-github-to-local-drive-v1.sh && cd .. && rm -rf Aureola &&
cd ~/.aureola/acros && ./install-conky.sh
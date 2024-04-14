sudo apt purge aisleriot five-or-more four-in-a-row gnome-chess hitori gnome-klotski gnome-mahjongg gnome-mines gnome-nibbles gnome-robots gnome-sudoku gnome-taquin gnome-tetravex iagno lightsoff quadrapassel swell-foop tali cheese gnome-2048 -y

sudo apt update

sudo apt install gir1.2-gtop-2.0 htop curl
# install font
sudo mkdir ~/.local/share/fonts/

sudo cp -r /media/leomin/SSD/Linux/JetBrainsMono/* ~/.local/share/fonts/

sudo fc-cache -f -v

sudo fc-list | grep "JetBrains"
# end

# create file config alacritty
# sudo mkdir ~/.config/alacritty/
# sudo cp -r /media/leomin/SSD/dev/ubuntu/alacritty.toml ~/.config/
# alacritty migrate

# end
sudo apt install git -y

sudo apt-get install ibus-unikey -y

sudo apt install snapd -y
# install gnome extensions
sudo wget -O gnome-shell-extension-installer "https://github.com/brunelli/gnome-shell-extension-installer/raw/master/gnome-shell-extension-installer"
sudo chmod +x gnome-shell-extension-installer
sudo mv gnome-shell-extension-installer /usr/bin/

gnome-shell-extension-installer 307 5446 5219 97 6670

sudo snap install node --classic

npm install --global yarn

sudo snap install sublime-text --classic

sudo snap install postman

sudo snap install --classic code

sudo snap install dbeaver-ce

# sudo snap install alacritty --classic

sudo snap install mpv

sudo snap install telegram-desktop

## add context vscode to folder
wget -qO- https://raw.githubusercontent.com/harry-cpp/code-nautilus/master/install.sh | bash

curl https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/cloudflare-client.list

sudo apt-get install cloudflare-warp -y

# warp-cli registration new

#fix docker-desktop
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |
  sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
sudo apt-get update

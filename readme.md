## Install NVM

```
sudo apt install curl
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

source ~/.bashrc
```

### Install Nodejs version 21

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install 21
```

### Install Yarn

```
npm install --global yarn
```

### Install Git

```
sudo apt install git -y

git config --global user.name "MinhTD"
git config --global user.name "tranminhsvp@gmail.com"

ssh-keygen -t ed25519 -C "tranminhsvp@gmail.com"

```

### Install Snapd

```
sudo apt install snapd
```

### Install Postman

```
sudo snap install postman
```

### Install zsh & oh-my-zsh

```
sudo apt install zsh -y
```

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

nano .zshrc

ZSH_THEME="agnoster"


plugins=(
    zsh-autosuggestions zsh-completions zsh-syntax-highlighting git
)

source .zshrc
```

### Install theme agnoster

- Find location .oh-my-zsh: `home/.oh-my-zsh/themes`
- Replace file [theme](./agnoster.zsh-theme)
- Run command and successfully

```
AGNOSTER_PATH_STYLE=shrink
```

- Set zsh as default: `nano .zshrc` add the line `exec zsh` top of file

### Install theme dracula terminal

```
sudo apt-get install dconf-cli

git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh
```

### Fix font terminal

- select [font](https://www.nerdfonts.com/font-downloads) jetbrains-font nerd font

### Install other

```
sudo apt-get update && sudo apt-get dist-upgrade && apt install rar unrar p7zip-full p7zip-rar && apt-get install ibus-unikey -y

sudo snap install vlc
sudo apt install gnome-tweaks
sudo apt install chrome-gnome-shell
sudo apt install ubuntu-restricted-extras
```

### Set editor default vim

### Fix install docker-desktop

```
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

```

### Install python

```
sudo apt install python3 python3-pip
```

### Install wrap(1.1.1.1)

```

curl https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg


echo "deb [arch=amd64 signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/cloudflare-client.list


sudo apt-get update && sudo apt-get install cloudflare-warp -y


warp-cli register


git clone https://github.com/Leomin07/cloudflare-gui-warp

sudo apt-get install python3-tk

cd cloudflare-gui-warp


python warp-GUI.py
or

python3 warp-GUI.py
```

- Note: require `python`

### Install telegram

```
sudo apt install telegram-desktop -y
```

### Install Smplayer

```
sudo snap install smplayer
```

### Install Terminator && uninstall

- Install:

```
sudo add-apt-repository ppa:gnome-terminator

sudo apt-get update

sudo apt-get install terminator
```

- Uninstall:

```
sudo apt remove terminator
```

### Install theme && icons

```
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1
cd WhiteSur-gtk-theme
./install.sh -t Dark
```

- extra WhiteSur-icon-theme and `./install.sh`
- Find Tweaks -> Appearance -> Applications, Icons to WhiteSur-Dark

### Install terminal alacritty

```
sudo apt update -y && sudo apt upgrade -y
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt update -y
sudo apt install alacritty -y
```

- Config Copy && Paste

```
sudo nano $HOME/.config/alacritty/alacritty.toml
or
sudo nano $HOME/.alacritty.toml

```

```
[keyboard]
bindings = [
{ key = "C", mods = "Control", action = "Copy" },
{ key = "V", mods = "Control", action = "Paste" },
]

[font]
size = 12.0

[font.normal]
family = "JetBrains Mono"

```

- Add theme dracula:

```
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
```

- Add an import to your alacritty.toml (Replace {theme} with your desired colorscheme):

```
import = [
    "~/.config/alacritty/themes/themes/dracula.toml"
]
```

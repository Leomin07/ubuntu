### Fix is not in the sudoers file

```
su -

nano /etc/sudoers
```

- And add:

```
leomin ALL=(ALL:ALL) ALL
```

### Gnome extensions

- [Dash to dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
- [ Quick Setting Tweaker ](https://extensions.gnome.org/extension/5446/quick-settings-tweaker/)
- [TopHat](https://extensions.gnome.org/extension/5219/tophat/) require: `sudo apt install gir1.2-gtop-2.0`
- [Coverflow Alt-Tab ](https://extensions.gnome.org/extension/97/coverflow-alt-tab/)
- [Search-Light](https://extensions.gnome.org/extension/5489/search-light/)
- [Bluetooth Quick Connect ](https://extensions.gnome.org/extension/1401/bluetooth-quick-connect/)

### Install Git

```
sudo apt install git -y

git config --global user.name "MinhTD"
git config --global user.name "tranminhsvp@gmail.com"

ssh-keygen -t ed25519 -C "tranminhsvp@gmail.com"

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

- select [font](https://www.nerdfonts.com/font-downloads) jetbrains-font nerd font

### Fix install docker-desktop

- Add Docker's official GPG key:

```
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
```

- Add the repository to Apt sources:

```
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```

```
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

### Install wrap(1.1.1.1)

```

curl https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg
```

```
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/cloudflare-client.list
```

```
sudo apt-get update
```

```
sudo apt-get install cloudflare-warp -y
```

```
sudo apt install cloudflare-warp
```

```
warp-cli registration new
```

```

git clone https://github.com/Leomin07/cloudflare-gui-warp

sudo apt-get install python3-tk -y

cd cloudflare-gui-warp


python warp-GUI.py
or

python3 warp-GUI.py
```

- Note: require `python`

### Install terminal alacritty

- [Config](./alacritty-config.txt) or [example](https://github.com/alacritty/alacritty/blob/63ef6c931901e895442edf5ec113d0ff609a7c24/alacritty.yml#L741)

```
sudo nano /home/leomin/.config/alacritty/alacritty.toml

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

### Install Tmux

```
sudo apt install tmux -y
```

### Fix required password when open disk parition other

### Fix connect Airpod

- Open terminal and run command

```
sudo nano /etc/bluetooth/main.conf
```

- Find `ControllerMode` and Replace `ControllerMode = bredr`

### Install fonts

```
mkdir ~/.local/share/fonts
```

```
cp -r /media/leomin/SSD/Linux/JetBrainsMono/* ~/.local/share/fonts/
```

```
fc-cache -f -v
```

```
fc-list | grep "JetBrains"
```

### Fix read-only ntfs

```
sudo ntfsfix /dev/nvme0n1p4
```

```
sudo ntfsfix /dev/sda2
```

```
sudo ntfsfix /dev/sdb2
```

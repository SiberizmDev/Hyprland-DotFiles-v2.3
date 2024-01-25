echo "Yedekler alınıyor..."

cp -r ~/.config ~/.config.bak
cp -r ~/.icons ~/.icons.bak
cp -r ~/.fonts ~/.fonts.bak
cp -r ~/.themes ~/.themes.bak
cp -r ~/.zshrc ~/.zshrc.bak
cp -r ~/.aliases ~/.aliases.bak


echo "Yapılandırma dosyaları ayarlanıyor..."

cp -r .config ~/
cp -r .icons ~/
cp -r .fonts ~/
cp -r .themes ~/
cp -r .zshrc ~/
cp -r .aliases ~/


echo "Gerekli yazılımlar kuruluyor!"

yay -S nm-connection-editor nwg-darwer cava mpd sway tmux hyprland waybar grimblast sddm brightnessctl playerctl swaylock-effects pamixer rofi-power-menu wf-recorder btop zsh oh-my-zsh-powerline-theme-git ark unrar zip unzip pavucontrol xdg-desktop-portal-wlr neovim vim nano git wget swaybg dunst dolphin kvantum kate appimagelauncher-bin noto-fonts-emoji wl-clipboard xfce4-appfinder wofi catfish firefox kitty polkit-gnome gnome-keyring ntfs-3g cliphist qt5ct lxappearance tesseract-data-tur tesseract-data-eng tesseract-data-rus visual-studio-code-bin spicetify-cli jdk-openjdk jdk11-openjdk jdk8-openjdk discord bitwarden flatpak gimp kitty kdenlive inkscape konsole neofetch github-desktop-bin webapp-manager steam virt-manager qemu-desktop dnsmasq iptables-nft go yarn npm python-pip

echo "Kabuk değiştiriliyor... (ZSH)"

sudo chsh -s $(which zsh)
chsh -s $(which zsh)

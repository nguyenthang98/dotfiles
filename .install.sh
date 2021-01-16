function log() {
    echo -e "\e[32m$@\e[0m"
}

log "[TASK 1] install esstentials apps"
pacman -Syu --noconfirm gvim rofi dunst conky zsh termite wget unzip i3exit i3-scrot

log "[TASK 2] copy files and folders"
yes | cp -r ./.config/* ~/.config/
yes | cp -r ./.utility ~/
yes | cp ./.Xresources ~/
yes | cp ./.profile ~/
yes | cp ./.xinitrc ~/
yes | cp ./.bashrc ~/
yes | cp ./.zshrc ~/
yes | cp ./.vimrc ~/

cat <<EOF >/usr/bin/rofi-apps
#!/bin/sh

rofi -show run
EOF
chmod +x /usr/bin/rofi-apps

log "[TASK 3] install fonts"
mkdir -p tmp
pushd tmp
wget https://use.fontawesome.com/releases/v5.13.0/fontawesome-free-5.13.0-desktop.zip
wget https://github.com/tonsky/FiraCode/releases/download/3.1/FiraCode_3.1.zip
mkdir -p fira-code
unzip FiraCode_3.1.zip -d fira-code
mkdir -p font-awesome
unzip fontawesome-free-5.13.0-desktop.zip -d font-awesome
mkdir -p ~/.fonts
yes | cp fira-code/ttf/*.ttf ~/.fonts/
yes | cp font-awesome/fontawesome-free-5.13.0-desktop/otfs/*.otf ~/.fonts/
popd
rm -rf tmp
fc-cache -f -v

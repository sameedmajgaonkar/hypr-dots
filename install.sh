#!/bin/bash


install_paru() {
  sudo pacman -S --needed base-devel
  git clone https://aur.archlinux.org/paru.git
  cd paru
  makepkg -si
}

if pacman -Qs paru >/dev/null; then
  echo "paru is already installed"
else
  echo "paru not found. Installing paru..."
  install_paru
fi

install_dependencies() {
  echo "Installing dependencies..."
  sudo pacman -Syy
  paru -S hyprland-git swww-git vscodium-bin rofi-power-menu rofi-wayland waybar gradience swaync whitesur-icon-theme vimix-cursors kitty xdg-desktop-portal-hyprland rofi-bluetooth-git
  sudo pacman -S python-pywal kitty brightnessctl grim slurp pywalfox pipewire wireframe
}

setup_terminal_theme() {
  echo "Configuring terminal..."
  sudo pacman -S zsh
  chsh -s $(which zsh)
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
}

setup_hyprland() {
  echo "Copying config files..."
  git clone https://github.com/sameedmajgaonkar/hypr-dots.git
  rsync -av --exclude=".git" --exclude="README.md" $HOME/hypr-dots/. $HOME/
}

setup_theme(){
  echo "Setting up theme..."
  gsettings set org.gnome.desktop.interface cursor-theme 'Vimix Cursors - White' 
  gsettings set org.gnome.desktop.interface cursor-size 24
  sh $HOME/theme.sh
}


cd $HOME
echo "Installation Begins!!!"
install_dependencies
setup_terminal_theme
setup_hyprland
setup_theme

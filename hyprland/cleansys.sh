sudo pacman -Rs --noconfirm --color=always $(pacman -Qqdt)
sudo pacman -Sc --noconfirm --color=always
sudo paccache -rk1
yay -Scc --noconfirm --color=always
flatpak uninstall --unused
ncdu / --exclude /media --exclude /run/timeshift

sudo pacman -Rs --color=always $(pacman -Qqdt)
sudo pacman -Sc --color=always
sudo paccache -rk1
yay -Scc --color=always
#flatpak uninstall --unused
ncdu / --exclude /media --exclude /run/timeshift

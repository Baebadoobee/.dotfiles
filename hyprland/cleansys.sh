sudo pacman -Rs --color=always $(pacman -Qqdt)
sudo pacman -Sc --color=always
sudo paccache -rk1
yay -Yc
yay -Scc --color=always
sudo reflector -c Brazil -a 6 --sort rate --save /etc/pacman.d/mirrorlist
#flatpak uninstall --unused
ncdu / --exclude /media --exclude /run/timeshift

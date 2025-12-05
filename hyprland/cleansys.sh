pacman -Rs --noconfirm --color=always $(pacman -Qqdt)
pacman -Sc --noconfirm --color=always
paccache -rk1
yay -Scc --noconfirm --color=always
flatpak uninstall --unused
ncdu / --exclude /media --exclude /run/timeshift

wal -ni (Select-String -Path ".config/waypaper/config.ini" -Pattern 'wallpaper\s*=\s*.*' | ForEach-Object { $_.Line -replace '^[^=]*=\s*', '' }); # Gets current wallpaper theme
Copy-Item ".cache/wal/colors-waybar.css" -Destination ".config/wofi/colors-wofi.css" -Force
Copy-Item ".cache/wal/colors-waybar.css" -Destination ".config/wlogout/colors-wlogout.css" -Force
pywalfox update;
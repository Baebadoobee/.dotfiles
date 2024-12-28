Stop-Process -Id ((Get-Process waybar).Id) -Force; # Stops waybar process
Stop-Process -Id ((Get-Process python3).Id) -Force; # Stops python subprocess

wal -ni (Select-String -Path ".config/waypaper/config.ini" -Pattern 'wallpaper\s*=\s*.*' | ForEach-Object { $_.Line -replace '^[^=]*=\s*', '' }); # Gets current wallpaper theme
Copy-Item ".cache/wal/colors-waybar.css" -Destination ".config/wofi/colors-wofi.css" -Force

waybar; #Launch waybar
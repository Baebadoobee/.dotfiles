wal -ni (Select-String -Path ".config/waypaper/config.ini" -Pattern 'wallpaper\s*=\s*.*' | ForEach-Object { $_.Line -replace '^[^=]*=\s*', '' }); # Gets current wallpaper theme
Copy-Item ".cache/wal/colors-waybar.css" -Destination ".config/wofi/colors-wofi.css" -Force
Copy-Item ".cache/wal/colors-waybar.css" -Destination ".config/wlogout/colors-wlogout.css" -Force
pywalfox update;

# Removing cursor colors
$colors_alacritty_path = "$HOME/.cache/wal/colors-alacritty.toml";
$colors_alacritty_redirect = "$HOME/.config/alacritty/colors-alacritty.toml";
$colors_alacritty_content = (Get-Content $colors_alacritty_path);

$bg_color = (($colors_alacritty_content[1].Split(" ")[2]).Split('"')[1]);

Write-Output "[colors.cursor]`ncursor=`"$bg_color`"" | Out-File $colors_alacritty_path -Append;

$($colors_alacritty_content[0..2] + $colors_alacritty_content[7..$colors_alacritty_content.Length]) | Out-File $colors_alacritty_redirect;


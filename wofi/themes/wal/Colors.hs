--Place this file in your .xmonad/lib directory and import module Colors into .xmonad/xmonad.hs config
--The easy way is to create a soft link from this file to the file in .xmonad/lib using ln -s
--Then recompile and restart xmonad.

module Colors
    ( wallpaper
    , background, foreground, cursor
    , color0, color1, color2, color3, color4, color5, color6, color7
    , color8, color9, color10, color11, color12, color13, color14, color15
    ) where

-- Shell variables
-- Generated by 'wal'
wallpaper="/home/bae/.config/hypr/wallpaper/used/tokyo_pink.png"

-- Special
background="#0f1016"
foreground="#c3c3c4"
cursor="#c3c3c4"

-- Colors
color0="#0f1016"
color1="#5C7BB9"
color2="#A46C99"
color3="#D9769B"
color4="#EB7797"
color5="#CF7AA9"
color6="#A77DC2"
color7="#c3c3c4"
color8="#5a5a6f"
color9="#5C7BB9"
color10="#A46C99"
color11="#D9769B"
color12="#EB7797"
color13="#CF7AA9"
color14="#A77DC2"
color15="#c3c3c4"

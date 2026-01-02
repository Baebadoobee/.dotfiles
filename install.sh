#!/usr/bin/env bash
SCRIPT_ROOT="$(dirname -- "$(realpath -- "${BASH_SOURCE[0]}")")"

PS3="What do you want? "

select option in "Core installation" "Dot installation"; do
  case "$REPLY" in
    1)
      echo "Linking basic configs..."
      ln -sf "$SCRIPT_ROOT/doc/.bashrc" "$HOME/.bashrc"
      ln -sf "$SCRIPT_ROOT/doc/.vimrc" "$HOME/.vimrc"
      mkdir -p "$HOME/.vim"
      cp "$SCRIPT_ROOT/doc/coc-settings.json" "$HOME/.vim/"
      ln -sf "$SCRIPT_ROOT/doc/fetch.jsonc" "$HOME/.fetchrc"
      sudo ln -sf "$SCRIPT_ROOT/doc/kbd/br-abnt2.map.gz" "/usr/share/kbd/keymaps/i386/qwerty/br-abnt2.map.gz"
      sudo ln -sf "$SCRIPT_ROOT/doc/dnsmasq.d" "/etc/dnsmasq.d"

      echo "Installing core packages..."
      sudo yay -S --needed --color=always --noconfirm - < $SCRIPT_ROOT/doc/pkg/_core
      ;;
    2) 
      break
      ;; 
  esac
done

PS3="Please, select a dot: "
select option in "Hyprland" "DWM" "Exit"; do
  case "$REPLY" in
    1)
      echo "Linking dots..."

      ln -sf "$SCRIPT_ROOT/hyprland/config/"* "$HOME/.config/"

      echo "Installing packages needed..."

      sudo yay -S --needed --color=always --noconfirm - < $SCRIPT_ROOT/doc/pkg/{_base,_hypr}

      echo "Done."
      break
      ;;
    2)
      echo "Linking dots"

      echo "Installing packages needed..."
      sudo yay -S --needed --color=always --noconfirm - < $SCRIPT_ROOT/doc/pkg/_base

      echo "Done."
      break
      ;;

    3)
      echo "Leaving."
      break
      ;;
    *)
      echo "Invalid option."
      ;;
  esac
done


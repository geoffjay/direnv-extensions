# ~/.config/direnv/lib/nix.sh

use_nix() {
  if [[ -z "$NIX_PROFILE" ]]; then
    export NIX_PROFILE="$HOME/.nix-profile"
  fi

  if [[ ! -f "$NIX_PROFILE/etc/profile.d/nix.sh" ]]; then
    echo "Nix profile not found"
    return
  fi

  source $NIX_PROFILE/etc/profile.d/nix.sh
}

# ~/.config/direnv/lib/asdf.sh

use_asdf() {
  export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
}

asdf_install() {
  asdf install
}

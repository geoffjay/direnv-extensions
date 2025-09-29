# ~/.config/direnv/lib/asdf.sh

use_asdf() {
  if [[ -z "$TMP_ASDF_DATA_DIR" ]]; then
    export TMP_ASDF_DATA_DIR="$HOME/.asdf"
    export PATH="$TMP_ASDF_DATA_DIR/shims:$PATH"
  fi
}

asdf_install() {
  asdf install
}

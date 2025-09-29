# ~/.config/direnv/lib/rbenv.sh

use_rbenv() {
  if [[ -z "$RBENV_ROOT" ]]; then
    export RBENV_ROOT="$HOME/.rbenv"
    export PATH="$RBENV_ROOT/bin:$PATH"
  fi

  eval "$(rbenv init -)"
  # eval "$(rbenv init - --no-rehash zsh)"
}

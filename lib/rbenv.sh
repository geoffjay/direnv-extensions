# ~/.config/direnv/lib/rbenv.sh

use_rbenv() {
  export RBENV_ROOT="$HOME/.rbenv"
  export PATH="$RBENV_ROOT/bin:$PATH"

  eval "$(rbenv init -)"
  # eval "$(rbenv init - --no-rehash zsh)"
}

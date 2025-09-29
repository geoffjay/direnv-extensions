# ~/.config/direnv/lib/flutter.sh

use_flutter() {
  if [[ -z "$FLUTTER_HOME" ]]; then
    export FLUTTER_HOME=$HOME/.local/lib/flutter
    export PATH=$FLUTTER_HOME/bin:$PATH
  fi
}

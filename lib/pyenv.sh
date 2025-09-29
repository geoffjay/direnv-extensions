# ~/.config/direnv/lib/pyenv.sh

use_pyenv() {
  if [[ -z "$PYENV_ROOT" ]]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    export PIPENV_PYTHON="$PYENV_ROOT/shims/python"
  fi

  export PYENV_VIRTUALENV_DISABLE_PROMPT=1

  plugin=(
    pyenv
  )

  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
}

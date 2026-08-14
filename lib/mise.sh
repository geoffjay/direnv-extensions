# ~/.config/direnv/lib/mise.sh
#
# Use mise-managed tools in a project. In .envrc:
#   use mise
#
# `mise activate` is for an interactive shell rc file — it emits zsh/bash
# hooks (autoload, add-zsh-hook, PROMPT_COMMAND) that direnv cannot eval.
# direnv loads lib/*.sh in bash, so use `mise hook-env` which prints plain
# `export` lines for the current directory's mise config.

use_mise() {
  eval "$(mise hook-env -s bash)"
}

mise_install() {
  mise install
}
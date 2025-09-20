#!/usr/bin/env bash

use_debug() {
  set -x

  if [[ -n "$1" ]]; then
    export DEBUG="$1"
  else
    export DEBUG=1
  fi
}

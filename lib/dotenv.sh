#!/usr/bin/env bash

use_dotenv() {
  if [[ ! -f .env ]]; then
    return
  fi

  while IFS=: read -r line; do
    eval "export $line"
  done < <(sed -e 's/^#.*$//' -e '/^$/d' .env)
}

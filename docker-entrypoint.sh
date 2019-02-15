#!/bin/bash
set -e

if [[ $(echo "$1" | cut -c1) = "-" ]]; then
  echo "$0: assuming arguments for omnicored"

  set -- omnicored "$@"
fi

if [[ "$1" = "omnicored" ]] || [[ "$1" = "omnicore-cli" ]] || [[ "$1" = "bitcoin-tx" ]]; then
  echo
  exec "$@"
fi

echo
exec "$@"
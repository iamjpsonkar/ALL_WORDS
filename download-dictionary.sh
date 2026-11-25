#!/usr/bin/env bash
set -euo pipefail

url='https://kaikki.org/dictionary/Hindi/kaikki.org-dictionary-Hindi.jsonl'

if [[ $# -gt 1 ]]; then
  printf 'Usage: %s [output-file]\n' "$0" >&2
  exit 2
fi

if [[ $# -eq 1 ]]; then
  curl --fail --location --show-error --output "$1" "$url"
else
  server_name="${url##*/}"
  curl --fail --location --show-error --output "$server_name" "$url"
fi

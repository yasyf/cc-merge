#!/usr/bin/env bash
# Regenerates docs/assets/demo.png from a real `cc-merge --help` run.
# Requires freeze (https://github.com/charmbracelet/freeze) and a Go toolchain.
set -euo pipefail
cd "$(dirname "$0")/../.."

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

go build -o "$tmp/cc-merge" ./cmd/cc-merge

{
  printf '$ cc-merge --help\n'
  "$tmp/cc-merge" --help
} >"$tmp/demo.txt"

freeze "$tmp/demo.txt" \
  --language text \
  --theme github-dark \
  --background "#0d1117" \
  --window \
  --padding 24 \
  --font.size 28 \
  --output docs/assets/demo.png

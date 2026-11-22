#!/usr/bin/env bash
# Local site with live reload.

set -euo pipefail

cd "$(dirname "$0")"

VENV=".venv"
ADDR="${1:-127.0.0.1:8000}"

# Same packages the GitHub Actions.
DEPS=(
  mkdocs-material
  mkdocs-git-revision-date-localized-plugin
  mkdocs-awesome-nav
)

if [ ! -d "$VENV" ]; then
  echo "Creating virtualenv in $VENV..."
  python3 -m venv "$VENV"
  "$VENV/bin/python" -m pip install --quiet --upgrade pip
  "$VENV/bin/python" -m pip install --quiet "${DEPS[@]}"
fi

exec "$VENV/bin/mkdocs" serve --dev-addr "$ADDR"

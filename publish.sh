#!/bin/sh
set -eu

SOURCE_ROOT=${1:-}
if [ -z "$SOURCE_ROOT" ]; then
  echo "Usage: $0 /path/to/ai_engineer_presentation" >&2
  exit 2
fi
SOURCE_DECK="$SOURCE_ROOT/presentations/fde-workshop/index.html"
[ -f "$SOURCE_DECK" ] || { echo "Deck not found: $SOURCE_DECK" >&2; exit 1; }

REPO_ROOT=$(git rev-parse --show-toplevel)
cp "$SOURCE_DECK" "$REPO_ROOT/index.html"
cd "$REPO_ROOT"
git add index.html
if git diff --cached --quiet; then
  echo "No slide changes to publish."
  exit 0
fi
git commit -m "Publish workshop slides"
git push origin HEAD

#!/usr/bin/env bash
# Draft linter: for every StructureDefinition-<id>.html link in changelog
# markdown files, verify that fsh-generated/resources/StructureDefinition-<id>.json exists.
#
# Usage: scripts/lint-changelog-links.sh
# Exit code: 0 if all links resolve, 1 otherwise.

set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
RES_DIR="$ROOT/fsh-generated/resources"

FILES=(
  "$ROOT/input/pagecontent/changelog.md"
  "$ROOT/input/translations/ru/pagecontent/changelog.md"
  "$ROOT/input/translations/uz/pagecontent/changelog.md"
)

status=0
for f in "${FILES[@]}"; do
  [[ -f "$f" ]] || continue
  while IFS= read -r id; do
    [[ -z "$id" ]] && continue
    if [[ ! -f "$RES_DIR/StructureDefinition-$id.json" ]]; then
      echo "::error file=$f::missing StructureDefinition resource for id '$id'"
      status=1
    fi
  done < <(grep -oE 'StructureDefinition-[a-zA-Z0-9._-]+\.html' "$f" \
           | sed -E 's|^StructureDefinition-(.+)\.html$|\1|' \
           | sort -u)
done

exit "$status"

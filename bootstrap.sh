#!/usr/bin/env bash
set -euo pipefail
SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="${1:-$PWD}"
mkdir -p "$TARGET" "$TARGET/.agents/skills" "$TARGET/docs"
copy_missing() {
  local from="$1" to="$2"
  mkdir -p "$(dirname "$to")"
  if [ ! -e "$to" ]; then
    cp "$from" "$to"
    printf 'ADDED %s\n' "${to#$TARGET/}"
  else
    printf 'KEPT  %s (already exists)\n' "${to#$TARGET/}"
  fi
}
if [ -e "$TARGET/AGENTS.md" ] && ! cmp -s "$SRC/AGENTS.md" "$TARGET/AGENTS.md"; then
  # The task's own AGENTS.md wins; put ours beside it instead of merging.
  copy_missing "$SRC/AGENTS.md" "$TARGET/docs/COFA_AGENTS.md"
  printf 'WARN  AGENTS.md already exists. Add this line to its end yourself: docs/COFA_AGENTS.md 도 따른다.\n'
else
  copy_missing "$SRC/AGENTS.md" "$TARGET/AGENTS.md"
fi
for skill in "$SRC"/.agents/skills/*; do
  name="$(basename "$skill")"
  copy_missing "$skill/SKILL.md" "$TARGET/.agents/skills/$name/SKILL.md"
done
copy_missing "$SRC/templates/PROJECT_STATE.md" "$TARGET/docs/PROJECT_STATE.md"
# PRD/SRS/SDD/DECISIONS/VERIFICATION/ASSUMPTIONS templates remain in the toolkit.
# Copy each into the task workspace only when the task warrants that document.
git -C "$TARGET" rev-parse --is-inside-work-tree >/dev/null 2>&1 \
  || printf 'NOTE  Not a git repo. If allowed: git init && git add -A && git commit -m "과제 원본"\n'
cat <<'MSG'
Bootstrap copied only missing files. Inspect task-required names and existing instructions before using.
This script does NOT install any dependencies, copy MCP settings, or change Codex.
MSG

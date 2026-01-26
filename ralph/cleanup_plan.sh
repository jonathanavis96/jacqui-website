#!/usr/bin/env bash
# cleanup_plan.sh - remove completed tasks from ralph/IMPLEMENTATION_PLAN.md
# Non-interactive. Designed to be safe to run repeatedly.

set -euo pipefail

# Script is typically run from repo root or from within ralph/
# Prefer ralph/IMPLEMENTATION_PLAN.md relative to this script.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PLAN_FILE="$SCRIPT_DIR/IMPLEMENTATION_PLAN.md"

if [[ ! -f "$PLAN_FILE" ]]; then
  echo "[cleanup_plan] ERROR: $PLAN_FILE not found" >&2
  exit 1
fi

tmp_out=$(mktemp)

# Archive completed task blocks to the bottom of the plan (do NOT lose history).
# A task starts with: - [ ]/**[x]/**[?] **NN.N** ...
# It may have indented sub-bullets beneath.

archive_tmp=$(mktemp)

awk '
  function is_task_start(line) { return (line ~ /^- \[[ x?]\] \*\*[0-9]/) }
  function is_done_task_start(line) { return (line ~ /^- \[x\] \*\*[0-9]/) }
  function is_heading(line) { return (line ~ /^## / || line ~ /^### /) }

  BEGIN { skipping=0 }

  {
    if (skipping==1) {
      # Continue writing the completed task block to archive until we hit next task or heading
      if (is_task_start($0) || is_heading($0)) {
        skipping=0
      } else {
        print >> ARCHIVE
        next
      }
    }

    if (is_done_task_start($0)) {
      skipping=1
      print >> ARCHIVE
      next
    }

    print
  }
' ARCHIVE="$archive_tmp" "$PLAN_FILE" > "$tmp_out"

# Append archive section if we captured any completed tasks
if [[ -s "$archive_tmp" ]]; then
  {
    echo ""
    echo "---"
    echo ""
    echo "## Completed (archive)"
    echo ""
    cat "$archive_tmp"
  } >> "$tmp_out"
fi

mv "$tmp_out" "$PLAN_FILE"
rm -f "$archive_tmp"

# Ensure file ends with a newline
python3 - <<'PY' 2>/dev/null || true
import pathlib
p=pathlib.Path("'"$PLAN_FILE"'")
text=p.read_text(encoding='utf-8')
if not text.endswith('\n'):
    p.write_text(text+'\n', encoding='utf-8')
PY

# fallback if python3 isn't available
printf '\n' >> "$PLAN_FILE" || true

echo "[cleanup_plan] Archived completed tasks in $PLAN_FILE"

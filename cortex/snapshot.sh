#!/usr/bin/env bash
# Quick project state snapshot for Cortex

# Get absolute path to this script, then go up one level for ROOT
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(dirname "$SCRIPT_DIR")"
cd "$ROOT" || exit 1

echo "# Jacqui Website Snapshot"
echo "Generated: $(date '+%Y-%m-%d %H:%M:%S')"
echo ""

# Git status
echo "## Git"
if git rev-parse --git-dir &>/dev/null; then
  echo "Branch: $(git branch --show-current)"
  if [[ -n "$(git status --porcelain)" ]]; then
    echo "Status: Uncommitted changes"
    git status --porcelain | head -10
  else
    echo "Status: Clean"
  fi
else
  echo "Not a git repository"
fi
echo ""

# Task summary from ralph/IMPLEMENTATION_PLAN.md
echo "## Tasks"
if [[ -f ralph/IMPLEMENTATION_PLAN.md ]]; then
  total=$(grep -cE '^\- \[[ x?]\] \*\*[0-9]' ralph/IMPLEMENTATION_PLAN.md 2>/dev/null || echo 0)
  done=$(grep -cE '^\- \[x\] \*\*[0-9]' ralph/IMPLEMENTATION_PLAN.md 2>/dev/null || echo 0)
  echo "Progress: $done/$total"
else
  echo "No IMPLEMENTATION_PLAN.md found"
fi
echo ""

# Next tasks
echo "## Next Tasks"
if [[ -f ralph/IMPLEMENTATION_PLAN.md ]]; then
  grep -E '^\- \[ \] \*\*[0-9]' ralph/IMPLEMENTATION_PLAN.md | head -3 || echo "No pending tasks"
else
  echo "No IMPLEMENTATION_PLAN.md found"
fi
echo ""

# Recent commits
echo "## Recent Commits"
git log --oneline -5 2>/dev/null || echo "No commits yet"

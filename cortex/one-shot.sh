#!/usr/bin/env bash
# cortex/one-shot.sh - Cortex Manager Entry Point for Jacqui Website
# Cortex is the high-level manager that orchestrates Ralph workers

set -euo pipefail

# Resolve script directory (cortex/)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

# Navigate to project root
cd "${PROJECT_ROOT}"

# Usage help
usage() {
  cat <<EOF
Usage: bash cortex/one-shot.sh [OPTIONS]

Cortex Manager - High-level orchestration for Jacqui Howles Website.

Options:
  --help, -h           Show this help message
  --interactive, -i    Enable interactive chat mode (ask questions)
  --model MODEL        Override model (opus, sonnet, auto)
  --runner RUNNER      Use specific runner (rovodev, opencode) [default: rovodev]

Examples:
  bash cortex/one-shot.sh                    # One-shot planning session
  bash cortex/one-shot.sh --interactive      # Interactive chat with Cortex
  bash cortex/one-shot.sh -i --model opus    # Interactive with specific model

Description:
  Cortex reads the current project state and provides strategic
  direction by creating Task Contracts for Ralph workers.

  Modes:
  - Default: One-shot planning session (auto-approve with --yolo)
  - Interactive (-i): Chat with Cortex, ask questions, get guidance

  Context provided to Cortex:
  - CORTEX_SYSTEM_PROMPT.md (identity and rules)
  - AGENTS.md (operational guidance)
  - snapshot.sh output (current state)
  - DECISIONS.md (architectural decisions)
  - THOUGHTS.md (strategic context)


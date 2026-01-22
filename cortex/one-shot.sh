#!/usr/bin/env bash
# cortex/one-shot.sh - Cortex Manager Entry Point for Jacqui Website

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
cd "${PROJECT_ROOT}"

usage() {
  echo "Usage: bash cortex/one-shot.sh [OPTIONS]"
  echo ""
  echo "Cortex Manager - Jacqui Howles Website"
  echo ""
  echo "Options:"
  echo "  --help, -h           Show this help"
  echo "  --interactive, -i    Interactive chat mode"
  echo "  --model MODEL        Model (opus, sonnet, auto)"
  echo "  --runner RUNNER      Runner (rovodev, opencode)"
  echo ""
  echo "Examples:"
  echo "  bash cortex/one-shot.sh"
  echo "  bash cortex/one-shot.sh -i --model opus"
}

MODEL_ARG=""
RUNNER="rovodev"
INTERACTIVE=false

while [[ $# -gt 0 ]]; do
  case "$1" in
    -h|--help) usage; exit 0 ;;
    -i|--interactive) INTERACTIVE=true; shift ;;
    --model) MODEL_ARG="${2:-}"; shift 2 ;;
    --runner) RUNNER="${2:-rovodev}"; shift 2 ;;
    *) echo "Unknown: $1" >&2; usage; exit 2 ;;
  esac
done

MODEL_SONNET_45="anthropic.claude-sonnet-4-5-20250929-v1:0"
MODEL_OPUS_45="anthropic.claude-opus-4-5-20251101-v1:0"
MODEL_SONNET_4="anthropic.claude-sonnet-4-20250514-v1:0"

resolve_model() {
  case "$1" in
    opus|opus4.5|opus45) echo "$MODEL_OPUS_45" ;;
    sonnet|sonnet4.5|sonnet45) echo "$MODEL_SONNET_45" ;;
    sonnet4) echo "$MODEL_SONNET_4" ;;
    latest|auto) echo "" ;;
    *) echo "$1" ;;
  esac
}

resolve_model_opencode() {
  case "$1" in
    grok*) echo "opencode/grok-code" ;;
    opus*|sonnet*) echo "opencode/gpt-5-nano" ;;
    latest|auto) echo "" ;;
    *) echo "$1" ;;
  esac
}

if [[ -z "$MODEL_ARG" ]]; then
  if [[ "$RUNNER" == "opencode" ]]; then
    MODEL_ARG="grok"
  else
    MODEL_ARG="opus"
  fi
fi

if [[ "$RUNNER" == "opencode" ]]; then
  RESOLVED_MODEL="$(resolve_model_opencode "$MODEL_ARG")"
else
  RESOLVED_MODEL="$(resolve_model "$MODEL_ARG")"
fi

CONFIG_FLAG=""
TEMP_CONFIG=""

if [[ "$RUNNER" == "rovodev" && -n "$RESOLVED_MODEL" ]]; then
  TEMP_CONFIG="/tmp/rovodev_cortex_config_$$_$(date +%s).yml"
  if [[ -f "$HOME/.rovodev/config.yml" ]]; then
    sed "s|^  modelId:.*|  modelId: $RESOLVED_MODEL|" "$HOME/.rovodev/config.yml" > "$TEMP_CONFIG"
  else
    echo "version: 1" > "$TEMP_CONFIG"
    echo "agent:" >> "$TEMP_CONFIG"
    echo "  modelId: $RESOLVED_MODEL" >> "$TEMP_CONFIG"
  fi
  CONFIG_FLAG="--config-file $TEMP_CONFIG"
  echo "Using model: $RESOLVED_MODEL"
fi

REQUIRED_FILES=(
  "cortex/CORTEX_SYSTEM_PROMPT.md"
  "cortex/snapshot.sh"
  "cortex/DECISIONS.md"
  "cortex/THOUGHTS.md"
  "cortex/AGENTS.md"
)

for file in "${REQUIRED_FILES[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "❌ Missing: $file" >&2
    exit 1
  fi
done

chmod +x cortex/snapshot.sh

echo "========================================"
echo "🧠 Cortex Manager - Jacqui Howles Website"
echo "========================================"
echo ""

SNAPSHOT_FILE="/tmp/cortex_snapshot_$$_$(date +%s).txt"
if ! bash cortex/snapshot.sh > "$SNAPSHOT_FILE" 2>&1; then
  echo "❌ Snapshot failed" >&2
  cat "$SNAPSHOT_FILE"
  rm -f "$SNAPSHOT_FILE"
  exit 1
fi

echo "Snapshot generated."
echo ""

COMPOSITE_PROMPT="/tmp/cortex_prompt_$$_$(date +%s).md"

{
  echo "# Cortex Manager - Jacqui Howles Website"
  echo ""
  echo "You are Cortex, the strategic manager for the Jacqui Howles Psychology Website project."
  echo ""
  echo "---"
  echo ""
  echo "# Agent Guidance"
  echo ""
  cat cortex/AGENTS.md
  echo ""
  echo "---"
  echo ""
  cat cortex/CORTEX_SYSTEM_PROMPT.md
  echo ""
  echo "---"
  echo ""
  echo "# Strategic Context"
  echo ""
  cat cortex/THOUGHTS.md
  echo ""
  echo "---"
  echo ""
  echo "# Current Repository State"
  echo ""
  cat "$SNAPSHOT_FILE"
  echo ""
  echo "---"
  echo ""
  echo "# Architectural Decisions"
  echo ""
  cat cortex/DECISIONS.md
  echo ""
  echo "---"
  echo ""
  echo "# Chat Mode Instructions"
  echo ""
  echo "You are now in **chat mode**. The user wants to have a direct conversation with you."
  echo ""
  echo "**Do NOT:**"
  echo "- Automatically start a planning session"
  echo "- Update files unless explicitly asked"
  echo ""
  echo "**DO:**"
  echo "- Answer questions about the project"
  echo "- Provide guidance when asked"
  echo "- Be conversational and helpful"
  echo ""
} > "$COMPOSITE_PROMPT"

echo "Invoking Cortex..."
echo "========================================"
echo ""

EXIT_CODE=0
if [[ "$RUNNER" == "rovodev" ]]; then
  if [[ "$INTERACTIVE" == "true" ]]; then
    echo "🧠 Cortex Interactive Mode"
    echo "💬 Ask questions about the Jacqui Howles website project."
    echo ""
  fi
  # shellcheck disable=SC2086
  acli rovodev run $CONFIG_FLAG --yolo "$(cat "$COMPOSITE_PROMPT")" || EXIT_CODE=$?
else
  if [[ -n "$RESOLVED_MODEL" ]]; then
    opencode run --model "$RESOLVED_MODEL" --format default "$(cat "$COMPOSITE_PROMPT")" || EXIT_CODE=$?
  else
    opencode run --format default "$(cat "$COMPOSITE_PROMPT")" || EXIT_CODE=$?
  fi
fi

rm -f "$SNAPSHOT_FILE" "$COMPOSITE_PROMPT" "$TEMP_CONFIG"

echo ""
echo "========================================"
echo "Cortex session complete."
echo "========================================"

exit $EXIT_CODE

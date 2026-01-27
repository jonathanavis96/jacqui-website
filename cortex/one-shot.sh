#!/usr/bin/env bash
# cortex/one-shot.sh - Planning session with Cortex for Jacqui Website
# Supports both one-shot and interactive chat modes

set -euo pipefail

# Resolve script directory
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$(cd -P "$(dirname "$SOURCE")" && pwd)"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
SCRIPT_DIR="$(cd -P "$(dirname "$SOURCE")" && pwd)"
PROJECT_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

cd "${PROJECT_ROOT}"

# Colors
readonly CYAN='\033[0;36m'
readonly GREEN='\033[0;32m'
readonly YELLOW='\033[1;33m'
readonly NC='\033[0m'

# Defaults
MODEL_ARG="sonnet"
INTERACTIVE=false

usage() {
  cat <<EOF
Usage: bash cortex/one-shot.sh [OPTIONS]

Options:
  --interactive, -i    Enable interactive chat mode
  --model MODEL        Override model (opus, sonnet, auto)
  -h, --help           Show this help

Examples:
  bash cortex/one-shot.sh                 # One-shot planning session
  bash cortex/one-shot.sh -i              # Interactive chat with Cortex
  bash cortex/one-shot.sh -i --model opus # Interactive with Opus
EOF
  exit 0
}

# Parse arguments
while [[ $# -gt 0 ]]; do
  case "$1" in
    -h|--help)
      usage
      ;;
    -i|--interactive)
      INTERACTIVE=true
      shift
      ;;
    --model)
      MODEL_ARG="${2:-sonnet}"
      shift 2
      ;;
    *)
      echo "Unknown option: $1"
      usage
      ;;
  esac
done

# Resolve model
RESOLVED_MODEL=""
case "$MODEL_ARG" in
  opus) RESOLVED_MODEL="anthropic.claude-opus-4-5-20251101-v1:0" ;;
  sonnet) RESOLVED_MODEL="anthropic.claude-sonnet-4-5-20250929-v1:0" ;;
  auto) RESOLVED_MODEL="auto" ;;
  *) RESOLVED_MODEL="$MODEL_ARG" ;;
esac

echo -e "${CYAN}========================================${NC}"
if [[ "$INTERACTIVE" == "true" ]]; then
  echo -e "${CYAN}🧠 Cortex Interactive Chat${NC}"
else
  echo -e "${CYAN}🧠 Cortex One-Shot Planning${NC}"
fi
echo -e "${CYAN}========================================${NC}"
echo ""

echo -e "${YELLOW}Generating context snapshot...${NC}"
SNAPSHOT_OUTPUT=$(bash "${SCRIPT_DIR}/snapshot.sh")
echo -e "${GREEN}✓ Snapshot ready${NC}"
echo ""

# Build mode-specific instructions
if [[ "$INTERACTIVE" == "true" ]]; then
  MODE_INSTRUCTIONS=$(cat <<'MODEEOF'
# Chat Mode Instructions

You are now in **chat mode**. The user wants to have a direct conversation with you.

**Do NOT:**
- Automatically start a planning session
- Update files unless explicitly asked
- Execute the full planning workflow from one-shot.sh

**DO:**
- Answer questions about the Jacqui Website project
- Provide guidance and recommendations when asked
- Help the user understand current state and next steps
- Be conversational and helpful
- Wait for user input and respond naturally

The user will now type their questions. Engage in a natural conversation.
MODEEOF
)
else
  MODE_INSTRUCTIONS=$(cat <<'MODEEOF'
# One-Shot Planning Mode

You are in **one-shot planning mode**. Review the current state and:

1. Check IMPLEMENTATION_PLAN.md for next tasks
2. Review any blockers or dependencies
3. Update THOUGHTS.md with your analysis
4. Propose next actions or ask clarifying questions

Be concise and actionable. Focus on what Ralph should work on next.
MODEEOF
)
fi

# Build system prompt
CORTEX_SYSTEM_PROMPT=$(cat <<EOF
$(cat "${SCRIPT_DIR}/AGENTS.md")

---

$(cat "${SCRIPT_DIR}/CORTEX_SYSTEM_PROMPT.md")

---

$(cat "${SCRIPT_DIR}/THOUGHTS.md")

---

# Current Repository State

${SNAPSHOT_OUTPUT}

---

$(cat "${SCRIPT_DIR}/DECISIONS.md")

---

${MODE_INSTRUCTIONS}
EOF
)

# Build message
if [[ "$INTERACTIVE" == "true" ]]; then
  MESSAGE="Hi Cortex! I'd like to chat about the Jacqui Howles website project. What's the current status?"
else
  MESSAGE="Review the current state of the Jacqui Website project and provide your strategic assessment. What should Ralph work on next?"
fi

# Create config file
CONFIG_FILE="/tmp/cortex_config_$$.yml"
cat > "$CONFIG_FILE" <<EOF
version: 1
agent:
  modelId: ${RESOLVED_MODEL}
additionalSystemPrompt: |
$(while IFS= read -r line; do
    echo "    $line"
done <<< "$CORTEX_SYSTEM_PROMPT")
  streaming: true
  temperature: 0.3
EOF

# Display mode info
if [[ "$INTERACTIVE" == "true" ]]; then
  echo -e "${CYAN}📋 Cortex has full context of the Jacqui Website project.${NC}"
  echo -e "${CYAN}💬 You can now ask questions and have a conversation.${NC}"
  echo ""
fi

# Run with message
acli rovodev run --config-file "$CONFIG_FILE" --yolo "$MESSAGE"
EXIT_CODE=$?

rm -f "$CONFIG_FILE"

echo ""
echo -e "${CYAN}========================================${NC}"
if [[ $EXIT_CODE -eq 0 ]]; then
  echo -e "${GREEN}✓ Session complete${NC}"
else
  echo -e "${YELLOW}⚠ Session ended with code ${EXIT_CODE}${NC}"
fi
echo -e "${CYAN}========================================${NC}"

exit $EXIT_CODE

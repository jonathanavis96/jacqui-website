#!/usr/bin/env bash
# cortex/chat.sh - Interactive chat session with Cortex for Jacqui Website

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

usage() {
  cat <<EOF
Usage: bash cortex/chat.sh [OPTIONS]

Interactive chat session with Cortex for the Jacqui Howles Website project.

Options:
  --model MODEL    Override model (opus, sonnet, auto)
  -h, --help       Show this help

Examples:
  bash cortex/chat.sh              # Chat with Sonnet
  bash cortex/chat.sh --model opus # Chat with Opus
EOF
  exit 0
}

# Parse arguments
while [[ $# -gt 0 ]]; do
  case "$1" in
    -h|--help)
      usage
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
  sonnet) RESOLVED_MODEL="anthropic.claude-sonnet-4-20250514-v1:0" ;;
  auto) RESOLVED_MODEL="auto" ;;
  *) RESOLVED_MODEL="$MODEL_ARG" ;;
esac

echo -e "${CYAN}========================================${NC}"
echo -e "${CYAN}🧠 Cortex Interactive Chat${NC}"
echo -e "${CYAN}   Jacqui Howles Website Project${NC}"
echo -e "${CYAN}========================================${NC}"
echo ""

echo -e "${YELLOW}Generating context snapshot...${NC}"
SNAPSHOT_OUTPUT=$(bash "${SCRIPT_DIR}/snapshot.sh")
echo -e "${GREEN}✓ Snapshot ready${NC}"
echo ""

# Build system prompt with chat mode instructions
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

# Chat Mode Instructions

You are now in **chat mode**. The user wants to have a direct conversation with you.

**Do NOT:**
- Automatically start a planning session
- Update files unless explicitly asked
- Execute the full planning workflow

**DO:**
- Answer questions about the Jacqui Website project
- Provide guidance and recommendations when asked
- Help the user understand current state and next steps
- Be conversational and helpful
- Wait for user input and respond naturally

The user will now type their questions. Engage in a natural conversation.
EOF
)

# Initial message
MESSAGE="Hi Cortex! I'd like to chat about the Jacqui Howles website project."

# Create config file
CONFIG_FILE="/tmp/cortex_chat_config_$$.yml"
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

echo -e "${CYAN}📋 Cortex has full context of the Jacqui Website project.${NC}"
echo -e "${CYAN}💬 You can now ask questions and have a conversation.${NC}"
echo ""

# Run interactive session
acli rovodev run --config-file "$CONFIG_FILE" --yolo "$MESSAGE"
EXIT_CODE=$?

rm -f "$CONFIG_FILE"

echo ""
echo -e "${CYAN}========================================${NC}"
if [[ $EXIT_CODE -eq 0 ]]; then
  echo -e "${GREEN}✓ Chat session complete${NC}"
else
  echo -e "${YELLOW}⚠ Session ended with code ${EXIT_CODE}${NC}"
fi
echo -e "${CYAN}========================================${NC}"

exit $EXIT_CODE

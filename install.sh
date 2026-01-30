#!/bin/bash
# install.sh - Symlink vibe-flow skills to ~/.claude/skills/

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_DIR="$HOME/.claude/skills"

mkdir -p "$SKILLS_DIR"

for skill in prd research plan implement continue; do
  ln -sf "$SCRIPT_DIR/skills/$skill" "$SKILLS_DIR/$skill"
  echo "Linked /$skill -> $SKILLS_DIR/$skill"
done

echo ""
echo "vibe-flow installed! Commands: /prd, /research, /plan, /implement, /continue"

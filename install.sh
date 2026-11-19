#!/usr/bin/env bash
set -euo pipefail

AGENT="${1:-codex}"
PROJECT_PATH="${2:-}"
SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

case "$AGENT" in
  codex)   DEST="$HOME/.codex/skills/csbh" ;;
  claude)  DEST="$HOME/.claude/skills/csbh" ;;
  cursor)  DEST="$HOME/.cursor/skills/csbh" ;;
  gemini)  DEST="$HOME/.gemini/skills/csbh" ;;
  project)
    if [ -z "$PROJECT_PATH" ]; then
      echo "project 模式需要项目根目录: ./install.sh project /path/to/project" >&2
      exit 1
    fi
    DEST="$PROJECT_PATH/.agents/skills/csbh"
    ;;
  *)
    echo "未知 agent: $AGENT (可选: codex|claude|cursor|gemini|project)" >&2
    exit 1
    ;;
esac

if [ -e "$DEST" ]; then
  echo "目标已存在: $DEST" >&2
  echo "请先备份或删除后再安装。" >&2
  exit 1
fi

mkdir -p "$DEST"
for item in SKILL.md references test-prompts.json test-results.md 使用说明.md; do
  if [ -e "$SRC/$item" ]; then
    cp -R "$SRC/$item" "$DEST/"
  fi
done

echo "已安装 csbh -> $DEST"
echo "新开一轮对话即可使用；试试问：我要存多少钱才能不上班？"

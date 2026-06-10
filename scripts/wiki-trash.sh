#!/usr/bin/env bash
# Wiki Archive/Trash Helper
# 用法：bash wiki-trash.sh <relative-path-to-page> [reason]
# 效果：移动页面到 archive/，保留原文件内容 + 归档日期 + 原因。避免误删数据。

set -euo pipefail

WIKI_DIR="$HOME/wiki/docs"
ARCHIVE_DIR="$WIKI_DIR/archive"
TODAY=$(date +%Y-%m-%d)
TIMESTAMP=$(date +%H%M%S)

if [ $# -lt 1 ]; then
    echo "❌ 用法: bash wiki-trash.sh <page-path> [归档原因]"
    exit 1
fi

PAGE_PATH="${1#/}"  # Remove leading slash if any
FULL_SRC="$WIKI_DIR/$PAGE_PATH"
FILE_NAME=$(basename "$PAGE_PATH")
REASON="${2:-No reason provided}"
DATE_SUFFIX="${TODAY}_${TIMESTAMP}_${REASON}"
NEW_NAME="${FILE_NAME%.md}_archived_${DATE_SUFFIX}.md"

if [ ! -f "$FULL_SRC" ]; then
    echo "❌ 页面不存在: $FULL_SRC"
    exit 1
fi

# Move to archive with metadata header
cp "$FULL_SRC" "$ARCHIVE_DIR/$NEW_NAME"
sed -i "1s/^/### Archived on ${TODAY}./" "$ARCHIVE_DIR/$NEW_NAME"
sed -i "2i ### Reason: ${REASON}" "$ARCHIVE_DIR/$NEW_NAME"
git mv "$FULL_SRC" "$ARCHIVE_DIR/$NEW_NAME" 2>/dev/null || true

echo "✅ 已归档: $PAGE_PATH -> archive/$NEW_NAME"

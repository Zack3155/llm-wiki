#!/usr/bin/env bash
# Wiki Server Auto-Starter — runs on WSL boot via crontab @reboot, or manually.
# Listens on 0.0.0.0:8081 (accessible from Windows host browser).

set -e

WIKI_DIR="$HOME/wiki"
VENV_PYTHON="$HOME/.local/wiki-venv/bin/python3"
LOG_FILE="/tmp/wiki-server.log"

cd "$WIKI_DIR" || exit 1

# 🔁 Kill any stale mkdocs processes on port 8081 first
EXISTING_PID=$(lsof -t -i :8081 2>/dev/null || true)
if [ -n "$EXISTING_PID" ]; then
    kill "$EXISTING_PID" 2>/dev/null || true
    sleep 1
fi

# 🚀 Start MkDocs with dev server (auto-rebuilds on file changes!)
nohup "$VENV_PYTHON" -m mkdocs serve \
    --dev-addr 0.0.0.0:8081 > "$LOG_FILE" 2>&1 &

echo "✅ Wiki Server started (PID $!) at http://0.0.0.0:8081 | Log: $LOG_FILE"

#!/usr/bin/env bash
set -euo pipefail

echo "[ams2-pitbox] NOTE: install-overlay.sh was removed for KISS simplicity." >&2
echo "[ams2-pitbox] Use the archive installer instead: ./ams2-pitbox/pitbox <mod.zip/.7z/.rar>" >&2
exit 1

log() { echo "[ams2-pitbox] $*"; }
die() { log "ERROR: $*"; exit 1; }

PAYLOAD_ROOT="."
GAME_DIR=""
DRY_RUN=0
DO_BACKUP=1

usage() {
  cat <<'EOF'
Usage:
  ./install-overlay.sh [--payload <path>] [--game-dir <path>] [--dry-run] [--no-backup]

Options:
  --payload <path>    Folder that contains "Automobilista 2/" (default: current folder)
  --game-dir <path>   Path to ".../steamapps/common/Automobilista 2" (overrides auto-detection)
  --dry-run           Print what would happen, without copying
  --no-backup         Do not create backups of overwritten files
  -h, --help          Show help

Backups:
  Written under the current folder as:
    ./_ams2_pitbox_backups/<timestamp>/
EOF
}


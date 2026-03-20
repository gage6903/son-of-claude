#!/bin/bash

INTERVAL="${1:-120}"

echo "=== son-of-claude ==="
echo "Interval: ${INTERVAL}s"
echo "Press Ctrl+C to stop"
echo

while true; do
  echo "[$(date)] Checking Teams..."

  claude -p "Follow the run checklist in BRAIN.md." --chrome --allowedTools "mcp__claude-in-chrome*"

  echo "[$(date)] Done. Sleeping ${INTERVAL}s..."
  echo "---"
  sleep "$INTERVAL"
done

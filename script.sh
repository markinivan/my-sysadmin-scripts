#!/usr/bin/env bash

INTERVAL=60
LOG_FILE="monitor.log"

while true; do
    {
        echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---"
        echo "=== free -h ==="
        free -h
        echo "=== df -h ==="
        df -h
        echo "=== uptime ==="
        uptime
        echo
    } >> "$LOG_FILE"
    sleep "$INTERVAL"
done

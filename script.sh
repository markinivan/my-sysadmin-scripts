#!/usr/bin/env bash

INTERVAL=60
LOG_FILE="monitor.log"

trap "echo 'Stopping monitor script...'; exit 0" SIGINT SIGTERM

echo "Script started. Writing to $LOG_FILE every $INTERVAL seconds..."

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

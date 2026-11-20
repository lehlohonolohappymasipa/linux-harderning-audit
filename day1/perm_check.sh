#!/usr/bin/env bash
# perm_check.sh - Scans /etc and /var for world-writable regular files

echo "=== Scanning /etc and /var for world-writable files ==="
find /etc /var -xdev -type f -perm -0002 2>/dev/null
echo "=== Scan complete ==="

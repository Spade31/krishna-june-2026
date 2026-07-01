#!/bin/bash

echo "=== STORAGE REPORT ==="
echo "Date: $(date)"
du -h --max-depth=1 /home/exaqubeuser 2>/dev/null | sort -rh | head -n 4

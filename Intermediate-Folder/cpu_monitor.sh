# Description: Monitors CPU usage and displays a warning if it exceeds the threshold.
# Uses: Helps troubleshooting and monitoring system performance.

#!/bin/bash

THRESHOLD=80

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
CPU_USAGE=${CPU_USAGE%.*}

if [ "$CPU_USAGE" -gt "$THRESHOLD" ]; then
    echo "⚠️ CPU usage high: $CPU_USAGE%"
else
    echo "CPU usage normal: $CPU_USAGE%"
fi

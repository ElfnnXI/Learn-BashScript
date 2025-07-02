# Description: Checks if a particular service is running and restarts it if it is inactive.
# Uses: Maintain uptime of critical services automatically.#!/bin/bash

#!/bin/bash

SERVICE="nginx"

if systemctl is-active --quiet "$SERVICE"; then
    echo "$SERVICE is running."
else
    echo "$SERVICE is not running. Restarting..."
    sudo systemctl start "$SERVICE"
fi

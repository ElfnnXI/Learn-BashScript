# Description: Stores the user's login history into a structured log file.
# Uses: Audit security and user activity.

#!/bin/bash

LOG_FILE="$HOME/user_login.log"
who >> "$LOG_FILE"
echo "User login logged at $(date)" >> "$LOG_FILE"

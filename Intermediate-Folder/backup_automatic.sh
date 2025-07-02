# Description: Using a timestamp, this script generates a backup copy of the given directory to a backup folder.
# Uses: Automate important file backups on a daily or weekly basis.

#!/bin/bash

SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backups"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
DEST="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR"
tar -czf "$DEST" "$SOURCE_DIR"

echo "Backup completed: $DEST"

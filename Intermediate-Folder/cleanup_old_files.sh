# Description: Deletes files that are more than 7 days old in the target directory.
# Uses: Manage storage and prevent folders from becoming too full.

#!/bin/bash

TARGET_DIR="$HOME/Downloads"
find "$TARGET_DIR" -type f -mtime +7 -exec rm -v {} \;
echo "Old files removed from $TARGET_DIR"

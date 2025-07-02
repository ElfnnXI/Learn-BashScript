# Description: Renames all files with a specific format (e.g. adds prefix/suffix).
# Uses: Makes it easier to manage large files in bulk.

#!/bin/bash

PREFIX="backup_"

for FILE in *.txt; do
    mv "$FILE" "${PREFIX}${FILE}"
done

echo "Renamed all .txt files with prefix $PREFIX"

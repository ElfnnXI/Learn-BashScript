#This script uses for and while loops.

#!/bin/bash
# loops.sh

echo "Example for loop:"
for i in {1..5}; do
  echo "Iteration to-$i"
done

echo ""
echo "Example while loop:"
n=1
while [ $n -le 3 ]; do
  echo "Number: $n"
  ((n++))
done

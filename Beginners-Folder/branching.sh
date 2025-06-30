# This script assesses whether a number is greater, equal, or smaller than 21.

#!/bin/bash

read -p "Input number: " number

if [$number -gt 21]; then
echo "The number is greater than 21"
elif [$number -eq 21]; then
echo "The number equal to 21"
else
echo "The number smaller than 21"
fi
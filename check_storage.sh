#!/bin/bash

echo "Checking storage for $(uname -n)"
echo "--------------------------------"
echo "80%+ output:"
df -h | awk '{ if (NR==1) print $0; else if ($5 + 0 > 80) print $0 }' # Check filesystems that have over 80% used% and print them
echo "--------------------------------"
echo "Number of filesystem over 80% occupied:" # Provide number of filesystems over 80%
df -h | awk '$5 + 0 > 80' |  wc -l
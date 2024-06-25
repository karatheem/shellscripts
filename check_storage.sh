#!/bin/bash

echo "Checking storage for $(uname -n)"
echo "--------------------------------"
df -h | awk '{ if (NR==1) print $0; else if ($5 + 0 > 80) print $0 }'
echo "--------------------------------"
echo "Filesystems over 80% occupied:"
df -h | awk '$5 + 0 > 80 {print $0}' 
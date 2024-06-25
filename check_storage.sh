#!/bin/bash

echo "Checking storage for ($hostname)"
echo "--------------------------------"
df -h | awk '{ if (NR==1) print $0; else if ($5 > 80) print $0 }'
echo "--------------------------------"
echo "Filesystem over 80% occupied:"
df - h | awk '$5 > 80' | wc -l
#!/bin/bash
filesdir=$1
searchstr=$2
if [ $# -ne 2 ] || [ -z "$filesdir" ] || [ -z "$searchstr" ]; then
    echo "Usage error"
    exit 1
fi
if [ ! -d "$filesdir" ]; then
    echo "Directory error"
    exit 1
fi
x=$(find "$filesdir" -type f | wc -l)
y=$(grep -s -r "$searchstr" "$filesdir" | wc -l)
echo "The number of files are $x and the number of matching lines are $y"

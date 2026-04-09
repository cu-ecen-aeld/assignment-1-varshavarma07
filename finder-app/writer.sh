#!/bin/bash
writefile=$1
writestr=$2
if [ $# -ne 2 ] || [ -z "$writefile" ] || [ -z "$writestr" ]; then
    echo "Usage error"
    exit 1
fi
mkdir -p "$(dirname "$writefile")"
echo "$writestr" > "$writefile" || exit 1

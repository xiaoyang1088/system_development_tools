#!/usr/bin/env bash

directory="${1:-.}"

if [[ ! -d "$directory" ]]; then
    echo "Error: '$directory' is not a directory." >&2
    exit 1
fi

records=$(
    find "$directory" -type f \
        -printf '%T@ %TY-%Tm-%Td %TH:%TM:%TS %p\n' |
        sort -nr
)

if [[ -z "$records" ]]; then
    echo "No files found in: $directory"
    exit 0
fi

echo "--- Most recently modified file ---"
printf '%s\n' "$records" |
    head -n 1 |
    cut -d' ' -f2-

echo
echo "--- All files, newest first ---"
printf '%s\n' "$records" |
    cut -d' ' -f2-


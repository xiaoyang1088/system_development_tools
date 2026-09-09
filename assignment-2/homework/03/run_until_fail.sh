#!/usr/bin/env bash

stdout_file="stdout.log"
stderr_file="stderr.log"
attempts=0

: > "$stdout_file"
: > "$stderr_file"

while true; do
    attempts=$((attempts + 1))

    ./rare_failure.sh > "$stdout_file" 2> "$stderr_file"
    status=$?

    if ((status != 0)); then
        break
    fi
done

echo "Failed after $attempts attempts."
echo "Exit status: $status"

echo "--- Standard output ---"
cat "$stdout_file"

echo "--- Standard error ---"
cat "$stderr_file"

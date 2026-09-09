#!/usr/bin/env bash

n=$((RANDOM % 100))

if [[ n -eq 42 ]]; then
    echo "Something went wrong"
    echo "The error was using magic numbers" >&2
    exit 1
fi

echo "Everything went according to plan"

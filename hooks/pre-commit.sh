#!/bin/sh

# Git passes the path to the file containing the proposed commit message as $1.
# Check if $1 is empty or not provided
if [ -z "$1" ]; then
    echo "Error: Commit message file is missing"
    exit 1
fi

MSG=$(cat "$1")
WORD_COUNT=$(printf '%s\n' "$MSG" | wc -w | awk '{print $1}')

echo "Checking the commit message"

if [ "$WORD_COUNT" -lt 5 ]; then
    echo "Error: Commit message should be at least 5 words"
    echo "Please enter a commit message and try again"
    exit 1
fi

echo "Commit message is valid"
exit 0
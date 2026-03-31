#!/bin/bash
# Script 4: Log File Analyzer
# Author: Vedant Patil
# Course: Open Source Software

# Reading command-line arguments: $1 is file, $2 is keyword
LOGFILE=$1
KEYWORD=${2:-"error"}

echo "======================================"
echo "          Log File Analyzer           "
echo "======================================"

# TODO: Loop until a valid, non-empty file is provided
while true; do
    if [ -s "$LOGFILE" ]; then
        break
    else
        echo "[WARNING] File '$LOGFILE' is empty or not found."
        read -p "Please enter a valid log file path (e.g., /var/log/dpkg.log): " LOGFILE
    fi
done

COUNT=0
echo "Analyzing File : $LOGFILE"
echo "Keyword        : '$KEYWORD'"
echo "--------------------------------------"

# Use while-read loop to process the file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Total occurrences of '$KEYWORD' found: $COUNT"
echo "--------------------------------------"

# TODO: Print the last 5 matching lines
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

echo "======================================"

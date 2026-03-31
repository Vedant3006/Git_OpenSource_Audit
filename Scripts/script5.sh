#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Vedant Patil

echo "======================================"
echo "    Open Source Manifesto Generator   "
echo "======================================"

# Taking User Input
read -p "Enter a tool you love: " TOOL
read -p "What does Open Source mean to you in one word? " MEANING
read -p "What will you build next? " BUILD

# Composition
FILENAME="manifesto_$(whoami).txt"

{
    echo "--- MY OSS MANIFESTO ---"
    echo "Developer: Vedant Patil"
    echo "Date: $(date)"
    echo "------------------------"
    echo "I use $TOOL to change the world."
    echo "To me, Open Source is all about $MEANING."
    echo "My next contribution will be: $BUILD."
} > "$FILENAME"

echo "--------------------------------------"
echo "Manifesto saved to $FILENAME"
echo "Reading your manifesto below:"
echo "--------------------------------------"
cat "$FILENAME"
echo "======================================"

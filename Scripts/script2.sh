#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Vedant Patil
# Course: Open Source Software

# Variable for our chosen software
PACKAGE="git"

echo "======================================"
echo "      FOSS Package Inspector          "
echo "======================================"
echo "Inspecting package: $PACKAGE"
echo "--------------------------------------"

# if-then-else: Check if package is installed using dpkg (Ubuntu standard)
if dpkg -s "$PACKAGE" &> /dev/null; then
    echo "[SUCCESS] $PACKAGE is installed on this system."
    echo "--------------------------------------"
    echo "Package Details:"
    # Use pipe and grep to extract Version and Architecture
    dpkg -s "$PACKAGE" | grep -E '^Version|^Architecture'
else
    echo "[WARNING] $PACKAGE is NOT installed."
fi

echo "--------------------------------------"
echo "FOSS Philosophy Note:"

# case statement: Prints a philosophy note based on package name
case $PACKAGE in
    httpd|apache2)
        echo "Apache: The web server that built the open internet."
        ;;
    mysql)
        echo "MySQL: Open source at the heart of millions of apps."
        ;;
    git)
        echo "Git: The distributed engine of collaborative freedom, built by Linus Torvalds."
        ;;
    firefox)
        echo "Firefox: A nonprofit fighting for an open and accessible web."
        ;;
    vlc)
        echo "VLC: The media player that plays anything, built by students in Paris."
        ;;
    *)
        echo "$PACKAGE is an important piece of the open-source ecosystem."
        ;;
esac
echo "======================================"

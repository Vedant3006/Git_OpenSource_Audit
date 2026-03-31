#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Vedant Patil
# Course: Open Source Software

# List of standard system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
# Adding our chosen software's config/binary path to a variable
SOFTWARE_DIR="/usr/bin/git"

echo "======================================"
echo "    Directory & Permission Auditor    "
echo "======================================"

# Loop through the list of standard directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Using awk to extract permissions (column 1) and owner/group (columns 3, 4)
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Using du to get human-readable size, cutting the first column
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "[Directory] $DIR"
        echo "  -> Permissions & Owner: $PERMS"
        echo "  -> Size: $SIZE"
        echo "--------------------------------------"
    else
        echo "[WARNING] Directory $DIR does not exist on this system."
        echo "--------------------------------------"
    fi
done

echo "======================================"
echo "      Chosen Software Audit (Git)     "
echo "======================================"

# TODO Implementation: Check if our chosen software directory/binary exists
if [ -e "$SOFTWARE_DIR" ]; then
    echo "[FOUND] Git configuration/binary located at: $SOFTWARE_DIR"
    GIT_PERMS=$(ls -ld "$SOFTWARE_DIR" | awk '{print $1, $3, $4}')
    echo "  -> Permissions & Owner: $GIT_PERMS"
else
    echo "[WARNING] Git directory/binary not found at $SOFTWARE_DIR."
fi
echo "======================================"

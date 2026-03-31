#!/bin/bash
# Script 1: System Identity Report
# Author: Vedant Patil
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Vedant Patil"
SOFTWARE_CHOICE="Git"

# --- System Info Gathering ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
# Fetching the Linux distribution name safely
DISTRO=$(cat /etc/os-release | grep '^PRETTY_NAME=' | cut -d '=' -f 2 | tr -d '"')
# Fetching current date and time
CURRENT_DATE=$(date +"%A, %d %B %Y %T")

# --- Display Output ---
echo "======================================"
echo "      The Open Source Audit           "
echo "======================================"
echo "Student Name    : $STUDENT_NAME"
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "--------------------------------------"
echo "System Identity Report"
echo "--------------------------------------"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Logged-in User  : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $CURRENT_DATE"
echo "--------------------------------------"
echo "License Info    : This operating system (Linux) is covered under the GNU General Public License v2.0 (GPLv2)."
echo "======================================"

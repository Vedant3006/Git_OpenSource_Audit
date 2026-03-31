# Open Source Software Audit Project 
**Student Name:** Vedant Sunil Patil  
**Registration Number:** 24BAI10122  
**Course:** Open Source Software  
**Target Software:** Git (Distributed Version Control System)

---

##  Project Overview
This project is a comprehensive audit of an open-source software (OSS) using Linux Shell Scripting. The goal is to automate system identity checks, package inspections, disk/directory auditing, log analysis, and manifesto generation using advanced Bash scripting concepts.

##  Repository Structure
This repository contains 5 core scripts and the generated output:

| File | Script Title | Concepts Covered |
| :--- | :--- | :--- |
| `script1.sh` | **Identity & OS Reporter** | Variables, `uname`, `whoami` |
| `script2.sh` | **FOSS Package Inspector** | Case Statements, `dpkg` status |
| `script3.sh` | **Disk & Permission Auditor** | For Loops, `du -sh`, Permissions |
| `script4.sh` | **Log File Analyzer** | While-Read Loops, If-Then, Grep |
| `script5.sh` | **Manifesto Generator** | User Input, File Redirection (`>`) |
| `manifesto_root.txt` | **Generated Output** | Final result from Script 5 |

---

## 🛠️ How to Run the Scripts
1. **Clone the repository:**
   ```bash
   git clone [https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git](https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git)
   cd YOUR_REPO_NAME
Give Execution Permissions:

Bash
chmod +x *.sh
Execute a Script (e.g., Script 4):

Bash
./script4.sh /var/log/dpkg.log install


📝 Script Descriptions
🔹 Script 1: Identity Reporter
Identifies the user (Vedant Sunil Patil) and the host operating system (Linux/Ubuntu). It verifies the environment before the audit begins.

🔹 Script 2: Package Inspector
Uses a case statement to provide philosophy notes about Git and checks if the package is correctly installed on the system using package management commands.

🔹 Script 3: Disk & Permission Auditor
A robust script that uses a for loop to iterate through critical system directories (/etc, /var/log, etc.), calculating their disk usage and reporting their current access permissions.

🔹 Script 4: Log File Analyzer
Performs a line-by-line scan of system logs using a while-read loop. It counts occurrences of specific keywords like 'install' or 'error' and displays the most recent entries.

🔹 Script 5: Open Source Manifesto
An interactive script that takes user input to generate a personalized "Open Source Manifesto" text file, demonstrating data persistence in Shell.

Learning Outcomes
Advanced proficiency in Bash Scripting.

Understanding of Linux Directory Structure and Permissions.

Practical experience with Version Control (Git) and Package Management.

Automated system auditing and log parsing techniques.

Developed by Vedant Sunil Patil (24BAI10122)

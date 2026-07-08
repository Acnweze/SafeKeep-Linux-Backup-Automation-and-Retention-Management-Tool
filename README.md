# SafeKeep

## Linux Backup Automation and Retention Management Tool

**A Bash-based Linux automation utility for scheduled backups, retention management, and operational logging.**

---

# Overview

SafeKeep is a Bash-based Linux automation tool designed to simplify server backup operations through automated file backups, retention management, logging, and scheduled execution using Cron.

The project simulates a real-world Linux system administration scenario where an operations team needs a lightweight solution to protect important files, remove outdated backups, and maintain records of automated tasks.

---

# Project Scenario

A small organization stores important application files and configuration data on a Linux server.

The operations team needs a simple automation tool that can:

* Create regular backups of important directories
* Organize backups using timestamps
* Remove old backups based on retention policies
* Maintain activity logs
* Run automatically without manual intervention

SafeKeep provides this functionality using native Linux tools and Bash scripting.

---

# Features

## Automated Backup

SafeKeep creates timestamped backups of important files and directories.

Example:

```bash
backup_20260708_223005
```

Each backup contains a copy of the protected data.

---

## Backup Retention Management

To prevent unlimited storage usage, SafeKeep automatically removes backups older than the configured retention period.

Configuration:

```bash
RETENTION_DAYS=7
```

---

## Logging System

SafeKeep records important operations including:

* Successful backups
* Cleanup operations
* Errors

Example:

```text
2026-07-08 22:30:05 - Backup created: /home/codespace/safekeep/backups/backup_20260708_223005
```

---

## Cron Scheduling

SafeKeep runs automatically using Linux Cron.

Current schedule:

```bash
0 2 * * * /home/codespace/safekeep/scripts/safekeep.sh >> /home/codespace/safekeep/logs/cron.log 2>&1
```

This executes SafeKeep every day at 2:00 AM.

---

# Technologies Used

* Linux
* Bash Shell Scripting
* Cron Scheduler
* Linux File Permissions
* Linux File System Commands

---

# Project Structure

```text
safekeep/
│
├── backups/
│   └── backup_timestamp/
│
├── config/
│   └── safekeep.conf
│
├── logs/
│   ├── safekeep.log
│   └── cron.log
│
├── reports/
│
├── sample-data/
│   ├── application.conf
│   ├── application.log
│   ├── database.conf
│   └── users.txt
│
└── scripts/
    └── safekeep.sh
```

---

# How It Works

SafeKeep workflow:

```text
Source Files
      |
      ↓
Load Configuration
      |
      ↓
Validate Directories
      |
      ↓
Create Backup
      |
      ↓
Apply Retention Policy
      |
      ↓
Write Logs
      |
      ↓
Scheduled Execution Through Cron
```

---

# Installation & Usage

## Clone Repository

```bash
git clone <repository-url>
```

Move into the project:

```bash
cd safekeep
```

---

## Give Script Permission

```bash
chmod +x scripts/safekeep.sh
```

---

## Run SafeKeep Manually

```bash
./scripts/safekeep.sh
```

Example output:

```text
Starting SafeKeep
Backup completed successfully
Checking old backups...
Old backups cleaned successfully
SafeKeep completed
```

---

# Configuration

SafeKeep settings are stored in:

```text
config/safekeep.conf
```

Example:

```bash
SOURCE_DIR="$PROJECT_DIR/sample-data"

BACKUP_DIR="$PROJECT_DIR/backups"

RETENTION_DAYS=7
```

The configuration file allows backup locations and retention settings to be changed without modifying the main script.

---

# Testing & Verification

SafeKeep was tested by:

* Running manual backup execution
* Verifying generated backup directories
* Confirming copied files
* Checking operational logs
* Installing and validating Cron scheduling

Verification commands:

```bash
ls -l backups
```

```bash
cat logs/safekeep.log
```

```bash
crontab -l
```

---

# Skills Demonstrated

This project demonstrates practical Linux administration and automation skills:

* Bash scripting
* Shell variables
* Functions
* Conditional statements
* File handling
* Linux permissions
* Output redirection
* Logging
* Cron scheduling
* Automation workflows

---

# Future Improvements

Possible enhancements:

* Email notifications after backup completion
* Cloud backup integration
* Backup compression using tar
* Encryption of backup files
* Web dashboard for monitoring
* System health reporting

---

# Author

**Agatha Nweze**

Linux Automation | Cloud Infrastructure | Azure Enthusiast

---

# Project Status

 Completed

SafeKeep demonstrates how Linux administration tasks can be automated using Bash scripting and Cron.



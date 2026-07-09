#!/bin/bash

# ==========================================
# SafeKeep
# Automated Backup & Health Reporting Tool
# ==========================================


# Load configuration file

CONFIG_FILE="$HOME/safekeep/config/safekeep.conf"


if [ -f "$CONFIG_FILE" ]
then
    source "$CONFIG_FILE"
else
    echo "Configuration file not found!"
    exit 1
fi


# ==========================================
# Logging Function
# ==========================================

log_message()
{
    local message="$1"

    echo "$(date '+%Y-%m-%d %H:%M:%S') - $message" >> "$MAIN_LOG"
}


# ==========================================
# Directory Validation Function
# ==========================================

check_directories()
{

    if [ ! -d "$SOURCE_DIR" ]
    then
        echo "Source directory does not exist"
        log_message "ERROR: Source directory missing"
        exit 1
    fi


    if [ ! -d "$BACKUP_DIR" ]
    then
        mkdir -p "$BACKUP_DIR"
        log_message "Backup directory created"
    fi

}

# ==========================================
# Backup Function
# ==========================================

# ==========================================
# Backup Retention Cleanup Function
# ==========================================

cleanup_old_backups()
{

    echo "Checking old backups..."

    find "$BACKUP_DIR" \
    -type d \
    -name "backup_*" \
    -mtime +"$RETENTION_DAYS" \
    -exec rm -rf {} \;


    if [ $? -eq 0 ]
    then
        echo "Old backups cleaned successfully"
        log_message "Old backups older than $RETENTION_DAYS days removed"
    else
        echo "Backup cleanup failed"
        log_message "ERROR: Backup cleanup failed"
    fi

}
create_backup()
{

    timestamp=$(date '+%Y%m%d_%H%M%S')

    backup_folder="$BACKUP_DIR/backup_$timestamp"


    mkdir -p "$backup_folder"


    cp -r "$SOURCE_DIR"/* "$backup_folder/"


    if [ $? -eq 0 ]
    then
        echo "Backup completed successfully"
        log_message "Backup created: $backup_folder"
    else
        echo "Backup failed"
        log_message "ERROR: Backup failed"
    fi

}
# ==========================================
# System Health Report Function
# ==========================================

generate_health_report()
{

echo "Generating system health report..."


{
echo "=============================="
echo "SafeKeep Health Report"
echo "=============================="

echo ""

echo "Generated:"
date

echo ""

echo "Hostname:"
hostname

echo ""

echo "Current User:"
whoami

echo ""

echo "System Uptime:"
uptime

echo ""

echo "Disk Usage:"
df -h

echo ""

echo "Memory Usage:"
free -h

echo ""

echo "Backup Storage Usage:"
du -sh "$BACKUP_DIR"

} > "$HEALTH_REPORT"


if [ $? -eq 0 ]
then
    echo "Health report generated successfully"
    log_message "Health report generated: $HEALTH_REPORT"
else
    echo "Health report generation failed"
    log_message "ERROR: Health report failed"
fi

}
# ==========================================
# System Health Report Function
# ==========================================

generate_health_report()
{

echo "Generating system health report..."


{
echo "=============================="
echo "SafeKeep Health Report"
echo "=============================="

echo ""

echo "Generated:"
date

echo ""

echo "Hostname:"
hostname

echo ""

echo "Current User:"
whoami

echo ""

echo "System Uptime:"
uptime

echo ""

echo "Disk Usage:"
df -h

echo ""

echo "Memory Usage:"
free -h

echo ""

echo "Backup Storage Usage:"
du -sh "$BACKUP_DIR"

} > "$HEALTH_REPORT"


if [ $? -eq 0 ]
then
    echo "Health report generated successfully"
    log_message "Health report generated: $HEALTH_REPORT"
else
    echo "Health report generation failed"
    log_message "ERROR: Health report failed"
fi

}

# ==========================================
# System Health Report Function
# ==========================================

generate_health_report()
{

echo "Generating system health report..."


{
echo "=============================="
echo "SafeKeep Health Report"
echo "=============================="

echo ""

echo "Generated:"
date

echo ""

echo "Hostname:"
hostname

echo ""

echo "Current User:"
whoami

echo ""

echo "System Uptime:"
uptime

echo ""

echo "Disk Usage:"
df -h

echo ""

echo "Memory Usage:"
free -h

echo ""

echo "Backup Storage Usage:"
du -sh "$BACKUP_DIR"

} > "$HEALTH_REPORT"


if [ $? -eq 0 ]
then
    echo "Health report generated successfully"
    log_message "Health report generated: $HEALTH_REPORT"
else
    echo "Health report generation failed"
    log_message "ERROR: Health report failed"
fi

}

# ==========================================
# System Health Report Function
# ==========================================

generate_health_report()
{

echo "Generating system health report..."


{
echo "=============================="
echo "SafeKeep Health Report"
echo "=============================="

echo ""

echo "Generated:"
date

echo ""

echo "Hostname:"
hostname

echo ""

echo "Current User:"
whoami

echo ""

echo "System Uptime:"
uptime

echo ""

echo "Disk Usage:"
df -h

echo ""

echo "Memory Usage:"
free -h

echo ""

echo "Backup Storage Usage:"
du -sh "$BACKUP_DIR"

} > "$HEALTH_REPORT"


if [ $? -eq 0 ]
then
    echo "Health report generated successfully"
    log_message "Health report generated: $HEALTH_REPORT"
else
    echo "Health report generation failed"
    log_message "ERROR: Health report failed"
fi

}

# ==========================================
# System Health Report Function
# ==========================================

generate_health_report()
{

echo "Generating system health report..."


{
echo "=============================="
echo "SafeKeep Health Report"
echo "=============================="

echo ""

echo "Generated:"
date

echo ""

echo "Hostname:"
hostname

echo ""

echo "Current User:"
whoami

echo ""

echo "System Uptime:"
uptime

echo ""

echo "Disk Usage:"
df -h

echo ""

echo "Memory Usage:"
free -h

echo ""

echo "Backup Storage Usage:"
du -sh "$BACKUP_DIR"

} > "$HEALTH_REPORT"


if [ $? -eq 0 ]
then
    echo "Health report generated successfully"
    log_message "Health report generated: $HEALTH_REPORT"
else
    echo "Health report generation failed"
    log_message "ERROR: Health report failed"
fi

}
# ==========================================
# System Health Report Function
# ==========================================

generate_health_report()
{

echo "Generating system health report..."


{
echo "=============================="
echo "SafeKeep Health Report"
echo "=============================="

echo ""

echo "Generated:"
date

echo ""

echo "Hostname:"
hostname

echo ""

echo "Current User:"
whoami

echo ""

echo "System Uptime:"
uptime

echo ""

echo "Disk Usage:"
df -h

echo ""

echo "Memory Usage:"
free -h

echo ""

echo "Backup Storage Usage:"
du -sh "$BACKUP_DIR"

} > "$HEALTH_REPORT"


if [ $? -eq 0 ]
then
    echo "Health report generated successfully"
    log_message "Health report generated: $HEALTH_REPORT"
else
    echo "Health report generation failed"
    log_message "ERROR: Health report failed"
fi

}


# ==========================================
# System Health Report Function
# ==========================================

generate_health_report()
{

echo "Generating system health report..."


{
echo "=============================="
echo "SafeKeep Health Report"
echo "=============================="

echo ""

echo "Generated:"
date

echo ""

echo "Hostname:"
hostname

echo ""

echo "Current User:"
whoami

echo ""

echo "System Uptime:"
uptime

echo ""

echo "Disk Usage:"
df -h

echo ""

echo "Memory Usage:"
free -h

echo ""

echo "Backup Storage Usage:"
du -sh "$BACKUP_DIR"

} > "$HEALTH_REPORT"


if [ $? -eq 0 ]
then
    echo "Health report generated successfully"
    log_message "Health report generated: $HEALTH_REPORT"
else
    echo "Health report generation failed"
    log_message "ERROR: Health report failed"
fi

}
# ==========================================
# Main Program
# ==========================================


echo "Starting SafeKeep"

check_directories

create_backup

cleanup_old_backups


echo "SafeKeep completed"
# ==========================================
# System Health Report Function
# ==========================================

generate_health_report()
{

echo "Generating system health report..."


{
echo "=============================="
echo "SafeKeep Health Report"
echo "=============================="

echo ""

echo "Generated:"
date

echo ""

echo "Hostname:"
hostname

echo ""

echo "Current User:"
whoami

echo ""

echo "System Uptime:"
uptime

echo ""

echo "Disk Usage:"
df -h

echo ""

echo "Memory Usage:"
free -h

echo ""

echo "Backup Storage Usage:"
du -sh "$BACKUP_DIR"

} > "$HEALTH_REPORT"


if [ $? -eq 0 ]
then
    echo "Health report generated successfully"
    log_message "Health report generated: $HEALTH_REPORT"
else
    echo "Health report generation failed"
    log_message "ERROR: Health report failed"
fi

}


#!/bin/bash

# Create a timestamp for the report
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Set the log file location
LOGFILE="$HOME/ds1202-project/logs/sysinfo.log"

# Create the logs directory if needed
mkdir -p "$HOME/ds1202-project/logs"

# Display and save the system information
{
    echo "=================================="
    echo "       SYSTEM INFORMATION"
    echo "=================================="
    echo "Date and Time: $TIMESTAMP"
    echo ""

    echo "Hostname:"
    hostname
    echo ""

    echo "OS and Kernel:"
    uname -a
    echo ""

    echo "Memory Usage:"
    free -h
    echo ""

    echo "Disk Usage:"
    df -h
    echo ""

    echo "System Uptime:"
    uptime
    echo "=================================="
} | tee -a "$LOGFILE"

echo ""
echo "Report saved to: $LOGFILE"


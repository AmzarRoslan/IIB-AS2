
#!/bin/bash

echo "================================"
echo "     SYSTEM INFORMATION"
echo "================================"

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

echo "================================"

#!/bin/bash

echo "🖥️  System Monitor Report"
echo "-------------------------"

# Show current date and time
echo "📅 Date & Time: $(date)"

# Uptime
echo "⏱️  Uptime: $(uptime -p)"

# CPU load
echo "🧠 CPU Load (1min, 5min, 15min):"
uptime | awk -F'load average: ' '{ print $2 }'

# Memory usage
echo "💾 Memory Usage:"
free -h

# Disk usage
echo "🗄️  Disk Usage:"
df -h /

# Top 5 memory-consuming processes
echo "🔥 Top 5 Memory-Consuming Processes:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6


#HOW TO RUN IT 
chmod +x system_monitor.sh






#EXAMPLE OUTPUT 
🖥️  System Monitor Report
-------------------------
📅 Date & Time: Sun May 18 05:40:20 AM IST 2025
⏱️  Uptime: up 3 hours, 12 minutes
🧠 CPU Load (1min, 5min, 15min):
0.35, 0.50, 0.48
💾 Memory Usage:
              total        used        free      shared  buff/cache   available
Mem:           8.0G        2.1G        3.5G        128M        2.4G        5.4G
🗄️  Disk Usage:
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   20G   28G  42% /
🔥 Top 5 Memory-Consuming Processes:
  PID COMMAND         %MEM
 1234 firefox          5.0
 4321 chrome           4.2
 3456 code             3.1
 5678 gnome-shell      2.3
 6789 python3          1.8


#!/bin/bash
# server-stats.sh - Basic server performance stats

echo "===== SERVER PERFORMANCE STATS ====="

# OS version
echo -e "\n--- OS Version ---"
uname -a

# Uptime
echo -e "\n--- Uptime ---"
uptime

# Load average
echo -e "\n--- Load Average ---"
uptime | awk -F'load average:' '{ print $2 }'

# Logged in users
echo -e "\n--- Logged In Users ---"
who

# CPU usage
echo -e "\n--- Total CPU Usage ---"
top -bn1 | grep "Cpu(s)" | \
awk '{print "CPU Usage: " $2 + $4 "%"}'

# Memory usage
echo -e "\n--- Memory Usage ---"
free -m | awk 'NR==2{printf "Used: %s MB | Free: %s MB | Usage: %.2f%%\n", $3,$4,$3*100/$2 }'

# Disk usage
echo -e "\n--- Disk Usage ---"
df -h --total | grep total | \
awk '{printf "Used: %s | Free: %s | Usage: %s\n", $3,$4,$5}'

# Top 5 processes by CPU
echo -e "\n--- Top 5 Processes by CPU ---"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

# Top 5 processes by Memory
echo -e "\n--- Top 5 Processes by Memory ---"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6

# Failed login attempts (stretch goal)
echo -e "\n--- Failed Login Attempts ---"
lastb | head


#!/bin/bash

echo "=============================="
echo "   SYSTEM HEALTH CHECK TOOL   "
echo "=============================="
echo ""

echo "--- SYSTEM INFO ---"
hostname
uname -a
uptime
echo ""

echo "--- CPU USAGE ---"
top -bn1 | grep "Cpu(s)"
echo ""

echo "--- MEMORY ---"
free -h
echo ""

echo "--- DISK SPACE ---"
df -h
echo ""

echo "--- NETWORK ---"
ip addr show
echo ""

echo "--- TOP 5 PROCESSES ---"
ps aux --sort=-%cpu | head -6
echo ""

echo "=============================="
echo "   CHECK COMPLETE!"
echo "=============================="

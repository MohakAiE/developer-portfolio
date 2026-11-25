#!/bin/bash
# Author: Mohak

echo "======================================"
echo "       SYSTEM INFORMATION REPORT"
echo "======================================"
echo "Name: Mohak"
echo "Roll Number: 2601730175"
echo "Date: $(date)"
echo ""

echo "CPU INFORMATION:"
lscpu | grep -E 'Model name|^CPU\(s\):'

echo ""
echo "MEMORY INFORMATION:"
free -h | awk 'NR==2 {print "Total Memory: "$2"\nUsed Memory: "$3}'

echo ""
echo "TOP 3 PROCESSES BY CPU USAGE:"
ps aux --sort=-%cpu | head -4

echo ""
echo "Report generated successfully."

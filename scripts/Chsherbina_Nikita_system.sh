#!/bin/bash
echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: Nikita"
echo "Surname: Chsherbina"
echo "Group: IT2-2314"
echo "Student ID: 38222"
echo ""
echo "=============================="
echo "System Information"
echo "=============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -o)"
echo "Disk Usage:"
df -h /
echo "Memory Usage:"
free -h
echo ""

if [ -f "Chsherbina_Nikita_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi	

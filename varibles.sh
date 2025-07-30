#!/bin/bash
echo "HOSTNAME:$(hostname)"
echo "UPTIME:$(uptime)"
echo "OS:$(uname -o)"
echo "CPU & MEMORY:"
top -b -n1 | head -n 5



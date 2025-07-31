#!/bin/bash
echo "Hostname: $(hostname)"
echo "OS: $(uname -a)"
echo "Uptime: $(uptime -p)"
echo "IP Address: $(hostname -I | awk '{print $1}')"
free -h


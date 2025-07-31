#!/bin/bash

# Threshold for disk usage
THRESHOLD=80

# Email address to send alert
EMAIL="meruvakavitha@gmail.com"

# Check disk usage for all mounted partitions (except tmpfs)
df -hP | grep -vE '^Filesystem|tmpfs|cdrom' | while read line; do
  USAGE=$(echo $line | awk '{ print $5 }' | sed 's/%//')
  PARTITION=$(echo $line | awk '{ print $6 }')

  if [ "$USAGE" -ge "$THRESHOLD" ]; then
    MESSAGE="Warning: Disk usage on $PARTITION is at ${USAGE}%"
    echo "$MESSAGE" | mail -s "Disk Alert on $(hostname): ${USAGE}% used on $PARTITION" "$EMAIL"
  fi
done


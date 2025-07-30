#!/bin/bash
read -p "Enter the username: " username

sudo useradd -s /bin/bash -m "$username"
echo "user is $username"

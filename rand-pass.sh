#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: $0 <password_length>"
  exit 1
fi
password_length=$1
characters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-+"
password=$(cat /dev/urandom | tr -dc "$characters" | head -c "$password_length")
echo "$password"

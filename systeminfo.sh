#!/usr/bin/env bash

# This is my first script in bash for collecting systeminfo in one go

#Declaring variable to grab the Kernel Version

krv=$(uname -r)
echo "$krv"

# Getting Free Memory
# For fist timers NR is awk built in variable, Here NR prints the 3rd line
fmem=$(free -h | awk 'NR==2 {print $4}')
echo "$fmem"

# Getting Free Disk space

frdsk=$(df -h / | awk 'NR==2 {print $4}')
echo "$frdsk"

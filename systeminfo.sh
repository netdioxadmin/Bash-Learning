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

# Adding Color to a variable
gr="\033[32m"
bold="\033[1m"
normal="\033[0m"

#Printing Date
printf -v logdate "%(%y-%m-%d)T"

#Printing text using the color formating 
echo -e $bold"Minimal System Report of" $gt "$HOSTNAME" $normal

#Displaying Various info
printf "\t Kernel version in $HOSTNAME is \t%s\n" $krv
printf "\t Bash version in $HOSTNAME is \t%s\n" $BASH_VERSION
printf "\t Free Storage in $HOSTNAME is \t%s\n" $frdsk
printf "\t Free Memory in $HOSTNAME is \t%s\n" $fmem
printf "\t No of files in PWD is \t%s\n" $(ls | wc -l)

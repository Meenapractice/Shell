#!/bin/bash

echo "All the variables passed to script $@"
echo "Number of variables $#"
echo "Script name $0"
echo "PID of the script $$"
echo "User $USER"
echo "Directory $HOME"
echo "Path is $PWD"
sleep 100 &
echo "PID of background process $!"
dnf install nnn
echo "last failed $?"
echo "All the variables $*"

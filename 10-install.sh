#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "Please run the script as root user"
   exit 1
fi

echo "Installing nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
   echo "Install nginx.....FAILURE"
   exit 1
else
  echo "Install nginx.......SUCCESS"
fi
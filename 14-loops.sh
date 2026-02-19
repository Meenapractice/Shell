#!/bin/bash

USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-practice"
LOGS_FILE="/var/log/shell-practice/$0.log"

if [ $USER_ID -ne 0 ]; then
  echo "Please run the script with root access" | tee -a $LOGS_FILE
  exit 1
fi

VALIDATE(){
   if [ $1 -ne 0 ]; then
     echo "$2 .... FAILURE" | tee -a $LOGS_FILE
     exit 1
   else
     echo "$2... SUCCESS" | tee -a $LOGS_FILE
   fi
}

for $package in $@
do
  dnf install $package -y &>>LOGS_FILE
  VALIDATE $? "$package installation"
done
#!/bin/bash

START_TIME=$(date +%s)

echo "Start time is $START_TIME"

sleep 10

END_TIME=$(date +%s)

echo "End time is $END_TIME"

TOTAL_TIME=$(($END_TIME - $START_TIME))

echo "Script is executed in $TOTAL_TIME"

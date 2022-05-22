#!/bin/bash

clear

while true
do
        clear
        printf "%-15s%5s\n" "TIMESTAMP" "TEMP(degC)"
        printf "%20s\n" "---------------------"
        temp=$(vcgencmd measure_temp | egrep -o '[0-9]*\.[0-9]*')
        timestamp=$(date +'%s')
        printf "%-15s%5s\n" "$timestamp" "$temp"
        sleep 1
done
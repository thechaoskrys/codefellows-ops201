#!/bin/bash

# Script Name:                  ops5-loops.sh
# Author:                       Krystal Reid
# Date of latest revision:      11/10/2023
# Purpose:                      displays running processes, asks user for PID, kills process with that PID
# Execution                     bash ops5-loops.sh
#                               ./ ops5-loops.sh 
#                               chmod +x ops5-loops.sh
# Citation:                     https://chat.openai.com/share/e76495b6-794d-4345-913b-1cfe0d4f4314


while true; do 
    echo "Running processes:"
    ps aux

    read -p "Enter the PID of the process to kill (Ctrl+C to exit): " pid

    kill "$pid"
    echo "Process with PID $pid killed."
done

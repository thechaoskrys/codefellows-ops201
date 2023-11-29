#!/bin/bash

# Script Name:                  ops7-grep.sh
# Author:                       Krystal Reid
# Date of latest revision:      11/10/2023
# Purpose:                      use lshw to display info and grep to filter
# Execution                     bash ops7-grep.sh or ./ops7-grep.sh or chmod +x ops7-grep.sh
# Citations:                    ChatGPT and class videos to assist with completion and comprehension https://chat.openai.com/share/d4a72d58-8061-4666-ad62-b23c1c15d90a


echo "System Information"
computer_name=$(hostname)
echo "Computer Name: $computer_name"

cpu_info=$(lshw -class cpu | grep -E 'product|vendor|physical id|bus info|width')
echo "CPU Information:"
echo "$cpu_info"

echo "RAM Information:"
ram_info=$(lshw -class memory | awk '/description|physcial id|size/ {print $2,$3}')
echo "$ram_info"

echo "Display Adapter Information:"
lshw_output=$(lshw -class display)
display_info=$(echo "lshw_output" | grep -E 'description:|product:|vendor:|physical id:|bus info:|width:|clock:|capabilities:|configuration:|resources:')
echo "$display_info

echo "Network Adapter Information:"
lshw_output=$(lshw -class network)
network_info=$(echo "$lshw_output" | grep -E 'description:|product:|vendor:|physical id:|bus info:|logical name:|version:|serial:|size:|capacity:|width:|clock:|capabilities:|configuration:|resources:')
echo "$network_info"

# Main

# End

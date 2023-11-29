#!/bin/bash

# Script Name:                  opschallenge-conditionals.sh
# Author:                       Krystal Reid
# Date of latest revision:      10/30/2023
# Purpose:                      ops challenge 6. detects if a file or dir exists, creates if non-existent. 
# Execution                     bash opschallenge-conditionals.sh or ./opschallenge-conditionals.sh or chmod +x opschallenge-conditionals.sh

# Declaration of variables
cities=("wilmington" "charleston" "savannah" "new_orleans")
# Declaration of functions
for city in "${cities[@]}"; do
    city_directory="ops-201d14-code-challenges/ops-201d14-code-challenges/$city"

    if [ -e "$city" ]; then
        echo "$city is already in the city directory."
    else
        if [ -d "$city_directory" ]; then
            mkdir "$city"
            echo "Added a new place to live: $city"
        else echo "Invalid place to live: $city"
        fi
    fi
done
# Main

# End

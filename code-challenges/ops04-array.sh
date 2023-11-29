#!/bin/bash

# Script Name:                  opschallenge-array.sh
# Author:                       Krystal Reid
# Date of latest revision:      10/26/2023
# Purpose:                      To complete ops challenge class 04. create 4 directories using script. load each dir path into array.  
# Execution                     bash opschallenge-array.sh or ./opschallenge-array.sh or chmod +x opschallenge-array.sh

# Declaration of variables

assignments=("dir1" "dir2" "dir3" "dir4")

# Declaration of functions
for assignment in "${assignments[@]}"; do
  
  if [ ! -d "$assignment" ]; then
   
    mkdir -p "$assignment"
    echo "Created directory $assignment"
  else
    echo "Directory $assignment already exists."
  fi

  touch "$assignment/array_file.txt"
  echo "Created array_file.txt in $assignment"
done
# Main
 

# End

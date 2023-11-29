#!/bin/bash

# Script Name:                  opschallenge-function.sh
# Author:                       Krystal Reid
# Date of latest revision:      10/26/2023
# Purpose:                      To complete ops challenge class 03. Write a funciton that prints the login history of users on the computer. 
# Execution                     bash opschallenge-fucntion.sh or ./opschallenge-function.sh or chmod +x opschallenge-function.sh

# Declaration of variables

# Declaration of functions
display_login_history() {
    echo $1
    last
     echo "this is the login history"
}
# Main
display_login_history "history of all logins"
display_login_history "history of all logins"
display_login_history "history of all logins"

# or
 for ((i=1; i<=3; i++)); do 
 display_login_history "history of the logins"

 done   

# End

#! /bin/bash
printf "Hello %s!\n" "$1"
printf "The value of all the positional parameters: %s\n" "$*"
printf "The number of positional parameters: %s\n" "$#"
printf "The name of the script that is running: %s\n" "$0"
printf "The proccess identification number (PID) is: %d\n" "$$"


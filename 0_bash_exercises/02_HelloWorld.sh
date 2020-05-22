
!# /bin/bash

#Clark Ngo
#25JUL2019
#This Script is for Hands-On Practice 5.
#The goal of this is to understand input output and throughput.

printf "Hello %s!\n" "$1" #$1 is a positional parameter. Thould say my name!
printf "The Value of all the positional parameters: %s\n" "$*" #This should tell the number of conditional parameters that are running.
printf "The number of positional parameters: %s\n" "$#" #Not quite sure what this does other than list the number of the positional parameters. How is this different than the value of all the conditional parameters?
printf "The name of the script that is currently running is: %s\n" "$0" #$0 is another parameter.
printf "The process identification number(PID) is : %s\n" "$$"
printf "The exit code of the last-executed command is: %s\n" "$?"

# Here's the defined variable that will be used.
newName="Clark Ngo"
printf "My name is %s\n" "$newName"


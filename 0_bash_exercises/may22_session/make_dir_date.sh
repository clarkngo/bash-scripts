#! /bin/bash
# mkdir "$( date +"%c")" # create directory with locale's time
timestamp="$(date "+%F-%T")"    # date with full date and time
read pokemon                    # read user input 
new_directory="$pokemon-$timestamp" # put together pokemon and timestamp variables
mkdir $new_directory   # create new directory value of with new_directory variable

#! /bin/bash
read -p "Enter Solider Name: " name
if [[ -z $name ]] # -z return True if length of string is zero
then
  printf "No name entered!\n"
  printf "Creating default directory name\n"
  mkdir soldier-first-class
else
  printf "Welcome $name! Entering Combat Mode.\n"
  printf "Creating your directory....\n"
  mkdir "$name directory"
fi

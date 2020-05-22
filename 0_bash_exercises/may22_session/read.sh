#! /bin/bash
# read 3 positional parameters (inputs)
read a b c
printf "This is your first: $a\n"
printf "This is your second: $b\n"
printf "This is your third: $c\n"
# command substitution using ticks and dollar sign with circle braces
date1=`date`
printf "$date1\n"
date2=$( date )
printf "$date2\n"


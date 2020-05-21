#! /bin/bash

sum=0

printf "Add sum to these numbesr: \n"
printf "%s\n" ${RANDOM}{,,,} | 
	while read num
	do
		printf "The current number is %d\n" " $num"
		((sum=sum+num))
		printf "The current sum number is %d\n" "$sum"

	done
printf "The loop is finished.\n\nThe final sum is %d\n" "$sum"


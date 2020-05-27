#! /bin/bash
sum=0
printf "Add sum to these numbers: \n"
while [[ sum -lt 100 ]]
	do
		read num
		printf "The current number is %d\n" "$num"
		((sum=sum+num))
		printf "The current sum is %d\n" "$sum"
		printf "will exit if sum is greater than or equal to 100\n"

	done
printf "The loop is finished.\n\nThe final sum is %d\n" "$sum"


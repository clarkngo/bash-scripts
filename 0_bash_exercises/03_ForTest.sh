#! /bin/bash
# loop in different strings
for name in Marvin Daniel Gold
do
 printf "%s\n" "$name"
done

# loop in numbers 
for (( i=0; i<=10; i++))
do
printf "The loop has run %d times.\n" "$i"
done


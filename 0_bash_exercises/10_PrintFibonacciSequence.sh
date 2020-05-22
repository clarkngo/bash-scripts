#/bin/bash

#Title:		printFibonacciSequence - Prints a Fibonacci Sequence
#Description:	Yes.
#Date:		7AUG2019
#Version:	1.0
#Author:	Clark Ngo
#Options:	null

printFibonacciSequence() {
first=0
second=1
echo 'Please enter a number to create a Fibonacci sequence: '
read total

echo 'The Fibonacci sequence is: '
for (( i=0; i<total; i++ ))
do
	echo -n "$first "
	fn=$((first + second))
	first=$second
	second=$fn
done
echo ''
}



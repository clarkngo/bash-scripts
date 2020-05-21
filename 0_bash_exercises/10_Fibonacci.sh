#/bin/bash

. PrintFibonacciSequence.sh 

echo 'Please enter a number to create a Fibonacci sequence: '
read total
printFibonacciSequence $total


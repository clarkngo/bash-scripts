#! /bin/bash

n=1;
until [ $n -gt $1 ]
do
	printf "This script has run %d times.\n" "$n"
	n=$(( $n + 1 ))
done

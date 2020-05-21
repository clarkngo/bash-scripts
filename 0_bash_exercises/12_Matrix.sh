#! /bin/bash

declare -A matrix

for ((row=0; row<$1; row++)) do
	for ((column=0; column<$2; column++)) do
		matrix[$row,$column]=$RANDOM
	done
done

f1="%$(($1+1))s"
f2=" %9s"

printf "$f1" ''
for ((i=0;i<$2;i++)) do
	printf "$f2" $i
done
echo

for ((row=0;row<$1;row++)) do
	printf "$f1" $row
	for ((column=0;column<$2;column++)) do
		print "$f2" ${matrix[$row,$column]}
	done
	echo
done


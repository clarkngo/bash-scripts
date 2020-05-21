#! /bin/bash

#Title 		: Reverse String HP10
#Date		: 4AUG2019

reverse() {
	str=$1
	reversedStr=
	while [ -n "$str" ]
	do
		temp=${str%?}
		reversedStr=$reversedStr${str#$temp}
		str=$temp
	done
	printf "The reversed string is: %s\n" "$reversedStr"
}


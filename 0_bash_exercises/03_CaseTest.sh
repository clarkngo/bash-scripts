#! /bin/bash

#Title		: Case Test HP06
#Date		:29JUl2019
#Author		: Clark Ngo
#Description	: delve into testing cases.
#Version	: 1.0
#Options	: none


case $1 in
	*[!0-9]*) message="non-numeric character(s).";;
	*) message="a number.";;
esac

printf "You entered %s\n" "$message"


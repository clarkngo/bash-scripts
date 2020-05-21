#! /bin/bash

readline() {
	echo "Please enter the file name: "
	read fileName
	printf "\n ----------- FILE START -----------\n"
	while IFS=, read name address phone
	do
		printf "Name: %-10s\tAddress: %15s\tPhone: %s\n" "$name" "$address" "$phone"
	done 	< $fileName
	printf  "\n -----------FILE END -------------\n"
}

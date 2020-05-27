#! /bin/bash
# I want a headers with Id, Name, Order Price
# I want a format for the entries in my list: digit, string, decimal/float

header="\n %-10s %-18s %8s\n"
format=" %-10d %-18s %8.2f\n"
printf "$header" Id Name "Order Price"
printf "=======================================\n"
printf "$format" 1 "Clark" 10.5 2 "Jason" 25.1 3 "Megaman" 30.5




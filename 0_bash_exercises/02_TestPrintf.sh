#! /bin/bash
#Author: Clark Ngo
#25JUL2019
#Format and Print with the Printf Command practice.

printf "%s\n" Print in separated lines "Print in one line"
printf "%b\n" "%b tells printf to escape sequences. Two tabs after me\t\t."
printf "%s%d\n%s%f\n%s%e\n" "%d prints intergers such as: "  25  "%f prints floating point numbers such as: "   26.1 \ "%e prints with the exponentioal notation such as: " 25.5
printf "%s#%02x%02x%02x\n" "%x  prints in hexidecimal. Here's an example of how to convert a RGB color 82 185 225  to a hex notation: " \ 82 185 225


#Next up is width seperation
header="\n %-10s %-18s %8s\n"
format=" %-10d %-18s %8.2f\n"
printf "$header" Id Name "Order Price"
printf "===========================================\n"
printf "$format" 1 "Clark Ngo" 234.30 2 "Customer 1"  199.99 3 "Customer 2" 167.76

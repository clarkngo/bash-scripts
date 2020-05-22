#! /bin/bash
#Title		: Conditions Test
#Date		: 29JUL2019
#Description	: Tests some conditions for some stuff.
#Author		: Clark Ngo
#Version 	: 1.0
#Options	: none


printf "Thank you for choosing Domino's pizza online delivery service, how many pizzas would you like today?\n"
read amount

if (( amount <= 0 ))
then
	printf "Dude, we don't sell negative pizzas...stop being silly. \n"
elif (( amount > 10 ))
then
	printf "Youre not going to eat that many 'Za's dude. \n"
	exit 1
else
	printf "There you go, a reasonable amount of pizzas. \n"
fi

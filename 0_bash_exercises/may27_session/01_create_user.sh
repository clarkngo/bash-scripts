#!/bin/bash
echo -e "Username:"
read username
if id -u $username > -1; then
    echo "That username already exists"
else
    echo -e "Full Name:"
    read fullname
    echo -e "Password:"
    read password
    useradd -c "$fullname" $username -p $password
    if id -u $username > -1; then
        echo "User created successfully"
    else
        echo "An error occurred while creating the user"
    fi
fi

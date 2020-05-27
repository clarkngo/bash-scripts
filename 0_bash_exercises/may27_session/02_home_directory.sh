#!/bin/bash
echo -e "Username:"
read username
test -d /home/$username && echo "Home Directory Exists" || echo "Home Directory Does Not Exist"

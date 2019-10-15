#!/bin/bash
read -p "Filename: " file
git add "$file"
read -p "Commit description: " desc
git commit -m "$desc"
git push origin master

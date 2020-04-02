#!/bin/bash
git log --pretty=format:"* %h, %ar : %s" > CHANGELOG.md
git add CHANGELOG.md
read -p "Commit description: " desc
git commit -m "$desc"
git push origin master

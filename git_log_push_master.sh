#!/bin/bash
git log --pretty=format:"* %h, %ar : %s" > CHANGELOG.md
git add CHANGELOG.md
d="update changelog - $(date '+%A %W %Y %X')"
git commit -m "$d"
git push origin master

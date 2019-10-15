#!/bin/bash
read -p "Branch name: " branch
git push origin --delete "$branch"

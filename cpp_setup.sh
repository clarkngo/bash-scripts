#!/bin/bash
cp -R /Users/clarkngo/dev/cpp-projects/cpp_project_setup/mac/.vscode .
cp -R /Users/clarkngo/dev/cpp-projects/cpp_project_setup/main.cpp .
echo main.out* >> .gitignore
echo main.out.dSYM >> .gitignore
echo .DS_Store >> .gitignore
touch README.md

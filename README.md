# bash-scripts
## `delete_ds_store_files`
- delete `.DS_Store` files in directories

## `git_add_all_master`
- git add all, commit, push master
- user input for commit message

## `git_add_one_master`
- git add file, commit, push master
- user input for file name and commit message

## `git_add_all_branch`
- git add all, commit, push branch
- user input for commit message and branch name

## `remote_branch_delete`
- delete branch in remote repository
- user input branch name

## `space_to_underscore`
- replace files and folders names with spaces to underscore

# Bash Profile
```
# custom startup directory
if [ -d "dev" ]
then
  cd dev
fi
echo "555 : repo to CS 555
504 : repo to CS 504
pl : programming labs
bs: bash scripts
spl : copy configuration for cpp
pp : python projects
dcp: daily coding problems
swb: run sql workbench"

# running programs
alias p='python3'

# bash scripts
alias gm='sh /Users/clarkngo/dev/bash-scripts/git_add_all_master.sh'
alias g1='sh /Users/clarkngo/dev/bash-scripts/git_add_one_master.sh'
alias gb='sh /Users/clarkngo/dev/bash-scripts/git_add_all_branch.sh'
alias gh='sh /Users/clarkngo/dev/bash-scripts/git_open_remote.sh'

# cpp configuration files for a project
alias spl='sh /Users/clarkngo/dev/bash-scripts/cpp_setup.sh'

# replace space to underscore on directories and filenames
alias rsu='sh /Users/clarkngo/dev/bash-scripts/space_to_underscore.sh'

# custom alias
alias profile='nano /Users/clarkngo/.profile'
alias ptext='open -a "TextEdit" /Users/clarkngo/.profile'
alias 555='cd /Users/clarkngo/dev/team-collaboration/CS555_Fall_2019/IN/ClarkNgo'
alias 504='cd /Users/clarkngo/dev/team-collaboration/CS504_FALL_2019/ON/ClarkNgo'
alias dev='cd /Users/clarkngo/dev'
alias ci='code-insiders .'
alias bs='code-insiders /Users/clarkngo/dev/bash-scripts'
alias lsd='ls -l | grep ^d'
alias swb='sh /Users/clarkngo/dev/bash-scripts/sqlworkbench.sh'
alias path='tr ":" "\n" <<< "$PATH"'

# cpp repo
alias pl='code-insiders /Users/clarkngo/dev/cpp-projects/programming-labs-cs555'

# python repo
alias pp='code-insiders /Users/clarkngo/dev/python-projects'
alias ppa='code-insiders /Users/clarkngo/dev/python-projects/arrays'
alias pph='code-insiders /Users/clarkngo/dev/python-projects/hash-tables'
alias pps='code-insiders /Users/clarkngo/dev/python-projects/string'
alias ppg='code-insiders /Users/clarkngo/dev/python-projects/greedy'
alias ppm='code-insiders /Users/clarkngo/dev/python-projects/math'
alias algo='code-insiders /Users/clarkngo/dev/python-projects/algorithms'
alias dcp='code-insiders /Users/clarkngo/dev/python-projects/daily-coding-challenge'

alias js='cd /Users/clarkngo/dev/nodejs-projects'
alias cpp='cd /Users/clarkngo/dev/cpp-projects'
alias w5='open -a "Microsoft Word" /Users/clarkngo/Google\ Drive/CityU\ MSCS/CS\ 555\ C++\ for\ Programmers/CS\ 555\ Notes.docx'
alias t5='open -a "TextEdit" /Users/clarkngo/Google\ Drive/CityU\ MSCS/CS\ 555\ C++\ for\ Programmers/CS\ 555\ Notes.docx'
alias w4='open -a "Microsoft Word" /Users/clarkngo/Google\ Drive/CityU\ MSCS/CS\ 504\ Principles\ Software\ Engineer/CS\ 504\ Notes.docx'
alias t4='open -a "TextEdit" /Users/clarkngo/Google\ Drive/CityU\ MSCS/CS\ 504\ Principles\ Software\ Engineer/CS\ 504\ Notes.docx'
# alias n='cd /Users/clarkngo/Google\ Drive/CityU\ MSCS/CS\ 555\ C++\ for\ Programmers'
```

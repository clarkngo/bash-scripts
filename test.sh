#!/bin/bash
# for i in $( ls ); do
#     echo item: $i
# done
# url="https://github.com/freeCodeCamp/chapter/issues/12"; echo "${url##*/}"
# RESULT="`wget -q  -O /tmp/foo google.com | grep '200' /tmp/foo | wc -l`"
# while [ $RESULT -ne 0 ]
# do
#    echo "he"
#    RESULT="`wget -q  -O /tmp/foo github.com/freeCodeCamp/chapter/issues/12 | grep '200' /tmp/foo | wc -l`"
# done

COUNT=282
for url in 'https://github.com/freeCodeCamp/chapter/issues/'{1..290}''
do
    wget --spider -S $url || break
    $COUNT = $COUNT + 1
done

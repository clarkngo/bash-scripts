#!/bin/bash
filenum=10
while [ $filenum -gt 0 ]
do
    touch audio$filenum.mp3
    filenum=$(($filenum - 1))
done

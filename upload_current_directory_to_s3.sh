#!/bin/bash

mybucket="www.worldwideamerican.net"
dir="./build/"
echo  //////////////////////////
echo  Uploading folder: $dir
echo  //////////////////////////

aws s3 cp $dir s3://$mybucket/ --recursive --exclude "*.jpg"

#!/bin/bash

mybucket="www.worldwideamerican.net"
dir="./dist/"
echo  //////////////////////////
echo  Uploading folder: $dir
echo  //////////////////////////

aws s3 cp $dir s3://$mybucket/ --recursive --exclude "*.jpg"

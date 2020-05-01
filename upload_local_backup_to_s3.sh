#!/bin/bash
read -p "Choose what to upload to s3 (1=most_recent, 2=older): " num

mybucket="www.worldwideamerican.net"
path="/Users/clarkngo/dev/team-collaboration/worldwide_versions/s3/"

if [[ $num -eq 1 ]]
then
  dir=`ls $path | tail -n 1`
elif [[ $num -eq 2 ]]
then
  dir=`ls $path | tail -n 2 | head -n 1`
fi

echo  //////////////////////////
echo  Uploading folder: $dir
echo  //////////////////////////

aws s3 cp $path$dir s3://$mybucket/ --recursive --exclude "*.jpg"

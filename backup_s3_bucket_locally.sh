#!/bin/bash

#!/bin/bash
timestamp="$(date "+%F-%T")"
new_dir="/Users/clarkngo/dev/team-collaboration/worldwide_versions/s3/$timestamp"
mkdir -p $new_dir
mybucket="www.worldwideamerican.net"
aws s3 cp s3://$mybucket $new_dir --recursive

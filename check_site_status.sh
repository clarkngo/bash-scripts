#!/bin/bash
# Source: https://serverfault.com/questions/562524/bash-script-to-check-if-a-public-https-site-is-up/562527
# Here is a way to do it using wget instead of curl. Keep in mind that MacOS doesn't come with wget by default.
# A successful web request will return a code of 200, a failure will return a 300, 400, 404, ect... (see REST API codes)
# This line will return a 1 if the web request was successful, otherwise it will return 0
wget -q  -O /tmp/foo google.com | grep '200' /tmp/foo | wc -l

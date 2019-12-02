#!/bin/bash
# Source: https://unix.stackexchange.com/questions/64432/extract-the-base-file-name-from-a-url-using-bash
# outputs: file.ext
url="http://www.foo.bar/file.ext"; echo "${url##*/}"

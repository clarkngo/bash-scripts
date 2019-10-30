#!/bin/bash

# Find directories and files names
# Replace spaces with underscore(_)

find . -depth -name '* *' \
| while IFS= read -r f ; do mv -i "$f" "$(dirname "$f")/$(basename "$f"|tr ' ' _)" ; done

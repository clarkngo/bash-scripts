#!/bin/bash
# This script creates a script with "#!/bin/bash"
read -p "Enter desired script name: " filename
touch "$filename.sh"
echo "#!/bin/bash" >> $filename.sh

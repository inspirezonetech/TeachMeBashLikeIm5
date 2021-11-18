#!/bin/bash
# ------------------------------------------------------------------------------------
# Tutorial: How to execute a bash script
# ------------------------------------------------------------------------------------

# This will create a file called "my-scipt.sh" containing the command "echo execute my-script.sh".
echo "echo execute my-script.sh" > my-script.sh

# To run a bash script, you need to give the file "Execute" permission.
# If we don't give the "Execute" permission, we may get a permission denied error.
# The following command will give "Execute" permissions to the file just created
chmod +x ./my-script.sh

# Bash files are executed using the following syntax:
./my-script.sh
# or
bash my-script.sh

# ------------------------------------------------------------------------------------
# Challenge: Write a bash script that, when executed 
# will print a "Hello" message with your name and the current date
# Hint: Use echo "$(date)" to print the date
# ------------------------------------------------------------------------------------

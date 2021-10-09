#!/bin/bash
# ------------------------------------------------------------------------------------
# Tutorial: Running a bash script
# ------------------------------------------------------------------------------------

# When our script gets bigger and bigger, we store it in a file.
# Create a new text file with a .sh extension, then put your commands in it.

echo "echo execute my-script"> my-script.sh

# And in order to run a bash script, you should give the file "Execute" permission.
# If we don't give the "Execute" permission, we may get a permission denied error.

chmod u+x ./my-script.sh

# Now in order to run the file.

./my-script.sh
# or
bash my-script.sh

# ------------------------------------------------------------------------------------
# Challenge: write a bash script that, when executed 
# print a Hello message with your name and show the calendar
# ------------------------------------------------------------------------------------

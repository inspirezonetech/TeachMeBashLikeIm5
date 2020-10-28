#!/bin/bash

echo "run-sh: Inside run-modified-bash.sh"

#read json file and store in variable
a=$(cat /home/runner/files_modified.json)
echo "run-sh: Content of files_modified.json: $a" 

#parse json to get file path and name
#cut " from string
b=$(echo "$a" | cut -d '"' -f 2)
#cut [ from string
b=$(echo "$b" | cut -d '[' -f 2)
#cut ] from string
b=$(echo "$b" | cut -d ']' -f 2)

echo "run-sh: After parsing, file to execute: $b" 

#check if this is a file to execute
#but beware dont execute this script itself if it was modified otherwise we'll enter endless loop!
if [[ "$b" == *".sh"* ]]; then

    if [[ "$b" != *"run-modified-bash.sh"* ]]; then
        echo "run-sh: This is a .sh file, executing"
        $b
    else
        echo "$b was modified. No need to execute"
    fi

else
    echo "run-sh: File modified is not a bash file! Will not execute"
fi

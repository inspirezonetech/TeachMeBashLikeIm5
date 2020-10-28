#!/bin/bash
# ------------------------------------------------------------------------------------
# Tutorial: passing command line arguments to the script
# ------------------------------------------------------------------------------------

# arguments are stored in the following syntax
echo "cmd used to run script: $0"
echo "first arg of this script: $1"
echo "second arg of this script: $2"
echo "number of args received: $#"
echo "string of all args received: $*"

# ------------------------------------------------------------------------------------
# Challenge: 1. run this script so that: the first arg is 'hello', second arg is 'world'
# ------------------------------------------------------------------------------------

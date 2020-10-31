#!/bin/bash
# ------------------------------------------------------------------------------------
# Tutorial: assigning operators
# ------------------------------------------------------------------------------------

# Assignment is a bit same as a box where you store something
# the "box" is called a variable, and to store something, you put what you want
# at the right of an equal and at the left, the name of the variable

# Example
fruit="banana"

# be careful, no spaces

# we use * keywork to see the value of a variable, just like this :
echo "The value of \"fruit\" is $fruit."

# you have also the kework let for assigning, especially for arithmetic operations
let a=10+5
echo "The value of \"a\" is now $a."


# ------------------------------------------------------------------------------------
# Challenge: assigning your favorite celebrity
# ------------------------------------------------------------------------------------

# Choose the name of your favorite celebrity, assign it to the variable "name"
# and show the value of name with an echo just like above
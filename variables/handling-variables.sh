#!/bin/bash
# ------------------------------------------------------------------------------------
# Tutorial: variables handling
# ------------------------------------------------------------------------------------

# A variable is like a "box" where you store some value that can change over time.
# To assign a value to a variable you can type something like:
variable="hello!"

# The part that is written left of the '=' operator is called the variable name
#(or identifier).
# To access the value of a variable, you need to use the '$' operator like this:
echo "$variable"

# When using a variable, it might not have a value, therefore it would be awesome 
#to be able to have a default value in case that happens. Happily, you can have
#default values and the syntax is like this:
echo "${newVariable:-"variable does not have a value"}"

# To test if a variable has a value and do something based on that information you
#can use '?' or ':?' as follows:
echo "${newVariable:?variable has no value}" #this will print the text that follows
											 #':?' as an error

# To assign a value to a variable only if it does not already have one when being
#querried:
echo "${newVariable:="have this value from now on"}"

# To clear a variable's value you need to do:
newVariable=

# You can find the length of a string value like this:
echo "${#variable}"

# ------------------------------------------------------------------------------------
# Challenge: How long are you?
# ------------------------------------------------------------------------------------

# Without assigning values to any variables, write a short script that prints the
#length of your name to the console.

#!/bin/bash
# ------------------------------------------------------------------------------------
# Tutorial: using functions
# ------------------------------------------------------------------------------------

# As it goes with most programming and scripting languages, a function is a small
# chunk of instructions within your code that can be called all at a time and looks
# like this:
function_name1 () {
	# commands
	return 0
}
# or like this:
function function_name2 {
	# commands
	return 0
}

# If you want your function to do something based on some data, you should use arguments:
function function_name3 {
	echo "$1"
	return 0
}
function_name3 "Hello world!"
# An argument is a value you give a function to do something with. For example take
# 'function_name3' where we give it "Hello world!" so it can print it in the terminal.
# You can give any number of arguments and they can be accessed by using '$' and the
# position of that argument in the function call.

# Watch out!
# Any function must be defined before any calls to it are made.
# If you declare a variable inside a function, it will only be accessible inside that function.

# ------------------------------------------------------------------------------------
# Challenge: create a function that prints something in the terminal and call it
# ------------------------------------------------------------------------------------

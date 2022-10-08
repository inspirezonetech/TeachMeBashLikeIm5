#!/bin/bash
# ------------------------------------------------------------------------------------
# Tutorial: brief description of tutorial content
# ------------------------------------------------------------------------------------

# Bash Until loop is used to execute a set of commands repeatedly based on the boolean result of an expression. 
# when evaluates to false, a set of commands are executed iteratively. The loop is terminated as soon as the expression evaluates to true for the first time.

# Example 1: print the numbers from 1 to 10

# declare the variable to initiate the pattern
num=1
# run the until lo-p until the number is less than 10
until [ $num -gt 10 ]
do 
    # print the number
    echo $num
    # increment number by one
    (( num++ ))
done

# Example 2: Reverse the number

# Declare the variable to store input number 
input=856
# Declare the variable to store the reversed number output number
output=0
# iterate the loop until input number become equal to zero
until [ $input -eq 0 ]
do 
    # multiply the output number with its appropriate power and add the next number to the it
    output=$(( output * 10 + input % 10 ))
    # divide the input number by 10
    input=$(( input / 10 ))
done
# print the reversed number
echo "The reverse number is: $output"


# ------------------------------------------------------------------------------------
# Challenge: 
# Given a number X. Print "EVEN" if the first digit of X is even number. Otherwise print "ODD".
# Explanation: For input number 456, third digit in number is 6, the second digit is 5 and first digit is 4 hence print "EVEN"
# Example: 
#   Input: 3569
#   Output: "ODD"
# ------------------------------------------------------------------------------------

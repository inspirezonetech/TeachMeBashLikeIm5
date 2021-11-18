#!/bin/bash
# ------------------------------------------------------------------------------------
# Tutorial: Using while-loops in Bash scripts.
# ------------------------------------------------------------------------------------

# Loops are used to traverse through a list of items one at a time and do repeated
# operation on each item while iterating. while loop is one such kind. We can use while-loops
# or an array, a string, a file, a range of numbers or a simple set of elements.

# Syntax with simple Usage

n=1    # Initialize the counter
while [ $n -le 5 ] # Iterate the loop for 5 times
do
    # Print the value of n in each iteration
    echo "This is running for $n time(s)"
    # Increment the value of n by 1
    (( n++ ))
done

# Usage : Using continue statements

n=1 # Initialize the counter
while [ $n -le 7 ] # Iterate the loop for 7 times
do
    # Getting the modulus of the input by the number 2
    result=$(( n % 2 ))
    # Checking if the modulus is equal to zero or not
    if [ "$result" -eq 0 ]
    then # print that the number is even if modulus is zero
        echo "This is an even number: $n"
        (( n++ )) # incrementing the counter to go to the next number
        continue # using continue statement
    fi
    # Print the current value of n
    echo "This is an odd number: $n"
    # Increment the value of n by 1
    (( n++ ))
done

# Usage : Using break statements 

a=0
while [ $a -lt 10 ] # Iterate the loop from 0 to to the number less than 10
do
   echo $a # print the value of a
   if [ $a -eq 5 ] # Check whether a is equal to 5 or not.
   then # if it is equal to 5, break the loop and exit
      break
   fi
   # if it is not equal to 5, continue the loop after incrementing
   a=$((a + 1))
done

# Usage : Using while loop in an array of strings

# declaring and initialising the array with strings
arr=( "Million" "Billion" "Trillion" )
i=0 # initializing an iterator i with 0
len=${#arr[@]} # getting the length of the array and storing in len variable
while [ $i -lt "$len" ]; # iterate the loop until the iterator becomes just less than length.
do
    echo "${arr[$i]}" # print the value of the array index which has the value of the iterator.
    (( i++ )) # incrementing the value of iterator i.
done

# Usage : Using while loop to make a user controlled program

while true # make the while loop infinite by giving true as the condition to be checked
do
   echo "This loop will continue until you enter the value '5'" 
   read -r inputval # read the value from the user to decide whether to run of not.
   if [ "$inputval" -eq 5 ] # checking if the value the user entered is 5 or not.
    then
        break # break from the loop if the user entered is 5.
   fi
done

# ------------------------------------------------------------------------------------
# Challenge: Create a 'movies' array containing your favourite movies.
# In a while-loop, print each movie if it's name start with "I".
# Example: movies=("Inception" "Marathon" "Insiders")
# Output: Inception
#         Insiders
# ------------------------------------------------------------------------------------

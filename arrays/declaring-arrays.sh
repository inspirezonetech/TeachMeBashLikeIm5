#!/bin/bash
# ------------------------------------------------------------------------------------
# Tutorial: Declaring indexed Arrays
# What is an array in bash?
#   An array is a data structure, or more simply a variable, which stores/contains multiple, referenced variables. 
#   In bash, an array can simultaneoulsy store both numerical and string data types.  
# ------------------------------------------------------------------------------------

# Explicity declaring an empty indexed array using bash builtin
declare -a array_foo

# Adding elements/variables to explicitly declared array. Bash arrays begin at index 0
array_foo[index_0]=element_bar
array_foo[index_1]=element_cyx
array_foo[index_n*]=element_zed # where n is a positive integer 
# Example
array_pets[0]="cat"
array_pets[1]="dog"
array_pets[2]="hamster"

# Most often arrays can be assigned without explicit declaration by using compound assignments.
array_foo=( element_bar element_cyx element_zed )
array_pets=( "cat" "dog" "hamster" )

## Following parts of tutorial use array_pets as an example

# Accessing elements of array
echo ${array_pets[0]} # = "cat" ...Accessing element at index 0 in array 
echo ${array_pets[1]} # = "dog" ...Accessing element at index 1 in array 
echo ${array_pets[-1]} # = "hamster" ..Accessing last element in array by using index=-1 
echo ${array_pets[@]} # = cat dog hamster ..Acessing all elements in array, in space formated output 
echo ${#array_pets[@]} # =3 ...Accessing number of elements in array

# Adding elements to array
array_pets=("${array_pets[@]}" "fish") 
  # or
array_pets+=('fish')
echo ${array_pets[@]} # = cat dog hamster fish 

# Removing elements of array
unset array_pets[1] # Remove element at index 1 of array ("e.g dog")
echo ${array_pets[@]} # = cat hamster
   # or
array_pets=( ${array_pets[@]/c*/} ) # Remove element from array using RegEx
echo ${array_pets[@]} # = dog hamster  

# Simple iteration over all elements in array using for loop
for pet in "${array_pet[@]}"; do
  echo $pet
done

# ------------------------------------------------------------------------------------
# Challenge: list challenges to be completed here. minimum of one challenge per tutorial
# ------------------------------------------------------------------------------------
# Create an indexed array containing the colors of your nation's (or any favorite) flag using first bash's built in declare and then by using compound assignments.
# (Make sure to include at least 3 colors)
# Print the colors of the first and last elements of your array.
# Print all colors of your array
# Add the color black to your array and print the result
# Remove one color from your array and print the result.

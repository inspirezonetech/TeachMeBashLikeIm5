#!/bin/bash
# ------------------------------------------------------------------------------------
# Tutorial: Declaring indexed Arrays
# What is an array in bash?
#   An array is a data structure, or more simply a variable, which stores/contains multiple, referenced variables. 
#   In bash, an array can simultaneoulsy store both numerical and string data types.  
# ------------------------------------------------------------------------------------

# Explicity declaring an empty indexed array using bash builtin.
declare -a array_pets

# Adding elements/variables to explicitly declared array. Bash arrays begin at index 0.
array_pets[0]="cat"
array_pets[1]="dog"
array_pets[2]="hamster"

# Accessing elements of array
echo ${array_pets[0]} #...Accessing element at index 0 in array 
echo ${array_pets[1]} #...Accessing element at index 1 in array 
echo ${array_pets[-1]} #...Accessing last element in array
echo ${array_pets[@]} # ...Acessing all elements in array, in space formated output 
echo ${#array_pets[@]} #...Accessing number of elements in array


# Most often arrays can be assigned without explicit declaration by using compound assignments.
array_pets2=( "parrot" "turtle" "snake" )
echo ${array_pets2[@]}


# Adding elements to array
array_pets=("${array_pets[@]}" "fish") 
# or
array_pets+=('bunny')
echo ${array_pets[@]} 

# Removing elements of array
unset array_pets[1] # Remove element at index 1 of array 
echo ${array_pets[@]}
   # or
array_pets=( ${array_pets[@]/c*/} ) # Remove element from array using RegEx
echo ${array_pets[@]}   

printf "%sLastly, we are going to print all elements in array on separate lines by using a for loop...... \n"
# Simple iteration over all elements in array using for loop
for pet in "${array_pets[@]}"; do
  echo $pet
done

# ------------------------------------------------------------------------------------
# Challenge:
# ------------------------------------------------------------------------------------
# 1) Create an indexed array containing the colors of your nation's (or any favorite) flag using first bash's built in declare and then by using compound assignments.
# (Make sure to include at least 3 colors)
# 
# 2) Print the colors of the first and last elements of your array.
# 
# 3) Print all colors of your array
# 
# 4) Add the color black to your array and print the result
#
# 5) Remove one color from your array and print the result.

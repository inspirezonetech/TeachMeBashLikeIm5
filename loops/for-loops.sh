#!/bin/bash
# ------------------------------------------------------------------------------------
# Tutorial: Using For-loops in Bash scripts.
# ------------------------------------------------------------------------------------

# Loops are used to traverse through a list of items one at a time and do repeated
# operation on each item while iterating. For loop is one such kind. We can use for-loops
# or an array, a string, a file, a range of numbers or a simple set of elements. 

# Syntax with simple Usage
for var in 0 1 2 3 4  # use of 'in' keyword for mentioning the set
do
   echo $var  # some operations to be performed
done

# Usage : Through a String
msg="Bash is fun"  
for word in $msg;
do  
    echo "$word"  
done

# Usage : Through an array
arr=( "Array" "is" "working" )  
for i in "${arr[@]}";  
do  
    echo "$i"
done


# ------------------------------------------------------------------------------------
# Challenge: Create a 'foods' array containing your favourite
# foods. In a for-loop, print each food by appending it to 'I love'.
# Example: foods=("milk" "honey")
# Output: I love milk
#         I love honey
# ------------------------------------------------------------------------------------


# Usage : Through a range of numbers ,starting from the given 'start' and ending at 'end'
for num in {50..55}  # Syntax : for variable in {start..end}
do  
    echo "$num"  
done  

# For loops can also be implemented with STEP, that is, incrementing or decrementing
# in each iteration by some value called step in case of traversing a range of numbers.
# Syntax : for variable in {start..end..step}
# Note: the default step is always 1, if not mentioned otherwise.
for num in {100..110..2}  # step = 2
do  
    echo "$num"  
done  


# ------------------------------------------------------------------------------------
# Challenge: Create a for loop, which iterates from 100 to 70, that is, in decrementing 
# order by 5. Print each number while treversing. 
# Example Output : 100 95 90......
# Hint : 'start' will be greater than 'end'
# ------------------------------------------------------------------------------------

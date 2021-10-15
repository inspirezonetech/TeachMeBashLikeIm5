#!/bin/bash
# ------------------------------------------------------------------------------------
# Tutorial: Arithmatic operators. 
            #Using expr : Here the expr command is used to evaluates the given expressions and display its corresponding output. The `expr` is similar to 'let,' but it does 
            not save the result to a variable. It directly prints the result.
            #Syntax : $expr expression
            #Using let : Let is a built-in command of Bash that allows us to perform arithmetic operations.
            #Syntax : let <arithmetic expression>
            #Using Double Parentheses : This is the easiest mechanism to perform basic arithmetic operations in the Bash shell. A leading $ may or may not be used.
# ------------------------------------------------------------------------------------

# Take user Input
echo "Enter first number : "
read -r n1 
echo "Enter second number : "
read -r n2 

#Addition using let
#let "add = $(( n1 + n2 ))" 
#echo "Sum= $add"  

#Addition using double parentheses
add=$((n1 + n2))              
echo "Sum: $add"  
 
#Subtraction using expr
#dif=$(expr "$n1" - "$n2")              
#echo "Diffference: $dif" 

#Subtraction using double parentheses
dif=$((n1 - n2))              
echo "Difference: $dif" 

#Multiplication using expr
#mult=$(expr "$n1" \* "$n2") #:The multiplication operator * must be escaped when used in an arithmetic expression with expr. Escape it like \*
#echo "Product: $mult" 

#Multiplication using double parentheses
mult=$((n1 * n2)) 
echo "Product: $mult" 

#Division using double parentheses
div=$((n1/n2))   
echo "Quotient: $div" 

#Modulus using double parentheses
((mod=n1 % n2))  
echo "Remainder: $mod"    

#Exponentiation using double parentheses
echo "Exponentiation: $(( n1 ** n2 ))"  

#Assigning a and b value n1 and n2
a=$n1
b=$n2

#Increment 
echo "Increment of n1: $((++n1))"   
echo "Increment of n2: $((++n2))"   

#Decrement
echo "Decrement of n1: $((--a))"   
echo "Decrement of n2: $((--b))"   

# ------------------------------------------------------------------------------------
# Challenge: Make a simple calculator with all the arithmetic operators.
# ------------------------------------------------------------------------------------

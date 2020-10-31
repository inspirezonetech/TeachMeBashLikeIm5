#!/bin/bash
# ------------------------------------------------------------------------------------
# Tutorial: How using if-else work
# ------------------------------------------------------------------------------------

# You can write condition same as in real life
# For example, if the person in front of me is Sarah, I will tell you "Hi Sarah !" 
# else, I will tell you "Hi anonymous !"

# In bash, it will be : if my variable person equal Sarah, I will tell you "Hi Sarah !" 
# else, I will tell you "Hi anonymous !"


person="Sarah"

# brackets are needed for the condition
if [ $person = "Bob" ]
then
  echo "Hi Sarah !"
else
  echo "Hi anonymous !"
fi

# if you want to say something if the condition is true but say nothing it's not, you
# don't put the else part, just like this : 
if [ $person = "Sarah" ]
then
  echo "Hi Sarah !"
fi

# ------------------------------------------------------------------------------------
# Challenge: Say hello !
# ------------------------------------------------------------------------------------

# Write a condition to say Hi to yourself and if it's not your first name 
# it will say "No, try again"
#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

# Read syntax with -p prompt perameter prompts at runtime to get dynamic data from user
read -p "Insert number 1 ? " firstnum
read -p "Insert number 2 ? " secondnum 
read -p "Insert number 3 ? " thirdnum
sum=$((firstnum + secondnum + thirdnum)) 
# Simple variable processing syntax
product=$((firstnum * secondnum * thirdnum)) 
# Same but here arithmatic operation is to generate product on stored variable.

# Simple e summary
cat <<EOF
The sum of $firstnum , $secondnum and $thirdnum numbers is $sum
The product of $firstnum , $secondnum and $thirdnum numbers is $product
EOF

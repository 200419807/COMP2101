#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were

# Tell the user we have started processing
echo "We have started processing..."
# roll the dice and save the results
bias=1
range=6
dice1=$(( RANDOM % range + bias )) # based on equation it will transfer randomely rolled dice with random system variable to dice1 veriable.
dice2=$(( RANDOM % range + bias ))
sum=$(( dice1 + dice2 )) # it's just a sum syntax.
average=$(( sum / 2 )) # average is saving in variable.
# some output with echo by calling var from current running script.
echo "Rolled two times $dice1, $dice2 and a sum is $sum"
echo "Rolled two times $dice1, $dice2 and an average is $average"

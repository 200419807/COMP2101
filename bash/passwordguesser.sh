#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

login="Login Successful."
nwrong="Username Or Password is Incorrect.."
referenceString="Password" #Generrating a variable to save password
read -s -p "Give login input:" myString #Look for user input for password and saving in $myString
echo
#Using if-else condition to check whether input is valid or not by comparing $referenceString.
if [ $myString = $referenceString ]; then
  echo "$login"
  echo
else
  echo "$nwrong"
  read -s -p "Give login input:" myString
 if [ $myString = $referenceString ]; then
   echo "$login"
   echo
 else
   echo
   echo "$nwrong"
   read -s -p "Give login input:" myString
 if [ $myString = $referenceString ]; then
   echo "$login"
   echo
 else
   echo
   echo "$nwrong"
   read -s -p "Give login input:" myString
 if [ $myString = $referenceString ]; then
   echo "$login"
   echo
 else
   echo
   echo "$nwrong"
   read -s -p "Give login input:" myString
 if [ $myString = $referenceString ]; then
   echo "$login"
   echo
 else
   echo
   echo "$nwrong script exiting."
fi
fi
fi
fi
fi

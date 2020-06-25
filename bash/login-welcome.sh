#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
uservar="$USER" #Getting the username dynamically by the use of environment variable
hostname="$(hostname)" #Getting hostname dynamically by the use of command
day=$(date +%A) #Using the date command to get what day of the week it is
currenttime=$(date +%I:%M\ %p) 
#Using Date Command to get date
###############
# Main        #
###############
#Testing the name of the day using if else command and add the custom line to print the same message 
if [ "$day" = Monday ];
then
csay="Welcome to planet $hostname, the great $uservar!"
elif [ "$day" = Tuesday ];
then
csay="Welcome to planet $hostname, mobility provider $uservar!"
elif [ "$day" = Wednesday ];
then
csay="Welcome to planet $hostname, CEO $uservar!"
elif [ "$day" = Thursday ];
then
csay="Welcome to planet $hostname, techy $uservar!"
elif [ "$day" = Friday ];
then
csay="Welcome to planet $hostname, unix tester $uservar!"
elif [ "$day" = Saturday ];
then
csay="Welcome to planet $hostname, introvert $uservar!"
else
csay="Welcome to planet $hostname, seo expert $uservar!"
fi
cowsay "$csay It is $currenttime on $day ."

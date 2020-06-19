#!/bin/bash
#
# this script generates a report of the files on the system that have the setuid permission bit turned on
# it is for the lab1 exercise
# it uses the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files are sorted by their owner

# Task 1 for the exercise is to modify it to also find and display the setgid files in a second listing
# The second listing should display after the setuid file list, and be formatted similar to the
# setuid file list including having a title
# use the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files should be sorted by their group

# Task 2 for the exercise is to modify it to also display the 10 largest regular files in the system, sorted by their sizes
# The listing should only have the file name, owner, and size in MBytes and be displayed after the listings of
# setuid and setgid files and should have its own title
# use the find command to generate the list of files with their sizes, with an error redirect to /dev/null
# use cut or awk to display only the output desired

echo "Setuid files:"
echo "============="
find / -type f -executable -perm -4000 -ls 2>/dev/null | sort -k 3
echo ""
echo "Setgid files:"
echo "=============="
find / -type f -executable -perm -2000 -ls 2>/dev/null|
sort -k 6 #finding in root dir and executing ls with -ls syntax. K6 is for sorting 6th column based on given in task1. 2 DEV NULL redirect errors into garbage so it won't be on display.2000 is to find gid and 000 means there could be whatever. read write or execure.
echo ""
echo "The 10 largest regular files in the system:"
echo "==========================================="
find /home/ -type f -exec ls -alh 2>/dev/null --block-size=M {} \;| #Blocksize will force all field to be seen in MBytes only. -exec executes the direct ls command with sub perameters like all, list and h in it.
sort -h -k5 | #h k5 sorts the 5th row as required
tail -n 10| #outpots only last 10 lines
awk '{print $9, $3, $5}' #this awk syntax will print column based on sequence
echo ""

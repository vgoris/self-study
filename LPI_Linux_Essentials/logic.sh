# Purpose: practice writing logic commands in a script
# Modified date: 2020-01-23

# run script to output the files in current directory to the screen
./directory_listing.sh

# run script to backup files within a directory 
# creates backup directory called testproject_01-23-20
./backup.sh testproject 01-23-20 

# simple logic test and display
# $1 denotes the first argument entered
# if the number of arguments does not equal 1, print message
if [ $# != 1 ] 
  then echo "Usage - this script requires one argument that is a number"
  exit
fi

if [ $1 = '1' ]
then
  echo The argument entered was 1
  exit
fi

if [ $1 = '2' ]
then
  echo The argument entered was 2
  exit
else
  echo The argument entered was not 2
  exit
fi



# Purpose: practice piping, redirecting, and extracting certain data from files
# Modified date: 2020-01-23

# take output of ls and pipe it (>) into a file called myoutput
ls > myoutput
# now display the contents of myoutput
cat myoutput

# word count (wc)
# counts the number of lines in barry.txt and pipes it into the myoutput file. Overwrites the contents of myoutput
wc -l barry.txt > myoutput
# to append the output at the end of the file instead of overwriting its contents, use (>>)
wc -l barry.txt >> myoutput
# count the number of lines in myoutput
# (<) takes the contents of myoutput as an input stream of data
wc -l < myoutput
# counts the number of lines in barry.txt and overwrites the contents of myoutput with that number
wc -l < barry.txt > myoutput

# users can control where standard errors and standard output go (2>)
# redirect error messages to a saved text file. Commands that run successfully will still show in terminal
ls video.mpeg blah.foo 2> errors.txt
# redirects everything that would've shown in terminal to the myoutput file. Can then see the contents of myoutput using cat command
ls video.mpeg blah.foo > myoutput 2>&1

# piping using multiple commands (|)
# use the output of one command as input to the next
# return the first 3 items in a file
ls | head -3 
# return the last 2 items
ls | tail -2

# searching through data (grep)
# use grep command and regular expressions (-E) to search for a certain criteria
# example:
# returns the lines (-n) in fruitstand.txt that contain 'mellon'
grep 'mellon' fruitstand.txt
# tells you which line numbers contain 'mellon' 
grep -n 'mellon' fruitstand.txt
# search for patterns with regular expressions (-E denotes using regex)
# 2, indicates we're looking for a vowel repeated (2 vowels together)
grep -E '[aeiou]{2,}' fruitstand.txt


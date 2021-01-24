#!/bin/bash 
# Purpose: practice variable declaration commands 
# Modified date: 2020-01-23

# Linux rules and conventions for naming and declaring variables:
#   1. variable names must start with letter
#   2. use underscores in place of spaces between words
#   3. no punctuation marks
#   4. start variable declaration with $
#   5. variable with all upper-case letters is an environmental variable

$age=40
$string='Hello World'

# Semicolon allows you to execute multiple commands on one line. In this case, 
# echo $age will execute whether or not echo $string executes- no dependency
echo $string ; echo $age

# quoting = the act of protecting shell meta-characters ($ or ; for example) from being treated as such
#         by using " ", ' ', or \
# example:
echo "I have \$1200" 
echo "My name is Jason; I live in DC" 

# Command to see all global/environmental variables
printenv

# Print one of these global variables
echo $HOME

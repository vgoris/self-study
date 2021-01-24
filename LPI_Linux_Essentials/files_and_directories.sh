#!/bin/bash
# Purpose: practice commands in navigating and manipulating files and directories
# Last modified: 2020-01-23

# list command: shows files in current directory
ls

# display all files in directory, hidden or not
# parameters that start with leading dashes are called options
#   can be grouped as follows: -ac or -a -c
ls -a

# lists files with additional information: ownership, creation dates, etc.
ls -l

# can combine these two commands as follows:
ls -la

#change directory
cd

# present working directory: tells you which directory you're in
pwd

# creates empty file called newfile.txt
# when used with directories, only updates the date/time stamp. Use mkdir command to create a directory instead
touch newfile.txt

# copy a file
# to copy a directory, must use with -r (for recursive) or -a (to copy all of the directory's contents) 
cp

# move and rename a file or directory
# mv nameOfFile.txt destinationFolder/newNameOfFile
# example:
mv bowl.txt Folder2/bowl.txt
# rename Folder3 to Jason
mv Folder3 Jason

# create a new directory called newfolder
mkdir newfolder

# remove the directory called newfolder
rmdir newfolder

# removes a set of nested directories as long as none of them contain files
rmdir -p newfolder 

# deletes a set of nested directories that contain files
# be careful- only use if you know what the files are that are contained in these directories
rm -r newfolder

# absolute reference: references a file or folder relative to the root directory
#   begins with a forward slash
# example:
/home/user1/file.txt
ls /home/diontraining/Documents/Folder2

# home directory reference
#   uses a tilde ~ to replace/act as a reference to the path's home directory
# example: the path of the user's home directory that contains file.txt
~/file.txt
ls ~/Documents/Folder2

# relative reference: references a file relative to its current directory 
#   . refers to the current directory
#   .. refers to the parent directory
# example:
../dir2/afile.txt
ls ../Folder2
# move any file titled b??l.txt (bowl.txt, bull.txt, etc) to present working directory (Folder1 in this case)
mv ../Folder2/b??l.txt ~/Documents/Folder1
mv ../Folder2/b??l.txt /home/diontraining/Documents/Folder1
mv ../Folder2/b??l.txt . 

# Purpose: practice managing and modifying user and group accounts
# Modified date: 2020-01-23

# add new user to system
# sudo runs the command as the root user
sudo adduser jasondion

# /bin/bash : path of the shell you want to assign
# /home/jason : the directory
# jasondion : group to assign jason to
# jason : username
sudo useradd -s /bin/bash -d /home/jason -m -G jasondion jason
# at this point, including superuser, there are three users on this system

# give jason a new password
# as the root user - the system admin - can reset the password for jason whenever
sudo passwd jason
# for more information about user commands: 
man chage

# change a user's username as the root user 
# example: 
# change jason's account username to janson. note: this does not change jason's group information
sudo usermod -l janson jason

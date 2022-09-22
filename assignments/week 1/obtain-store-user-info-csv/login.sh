#!/bin/bash

echo "Please Log-In:";
read -p 'Username: ' uname;
read -sp 'Password: ' password;

if [ $password -eg sh parser.sh /persist-data-exercise.csv | grep "Password: ${password}";
then
   echo "Success!";
else
   echo "Oops! Your password is incorrect. Please try again.";
#sh parser.sh /persist-data-exercise.csv | grep -A4 "Password: ${password};



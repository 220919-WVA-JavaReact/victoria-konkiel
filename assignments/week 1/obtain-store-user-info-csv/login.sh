#!/bin/bash

echo "Please Log-In:";
read -p 'Username: ' uname;
read -sp 'Password: ' password;

if [ $password | awk -F ',' -v var="$password" '$5 ];
then
   echo "Success!";
else
   echo "Oops! Your password is incorrect. Please try again.";
fi
#sh parser.sh /persist-data-exercise.csv | grep -A4 "Password: ${password};



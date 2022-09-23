#!/bin/bash

echo "Please Log-In:";
read -p 'Username: ' uname;
read -sp 'Password: ' password;

#if [ $password .eq | grep '$password' ./persist-data-exercise.csv ];
#then
#   echo "Success!";
#else
#   echo "Oops! Your password is incorrect. Please try again.";
#fi
sh parser.sh /persist-data-exercise.csv | grep -A4 "Password: ${password}";



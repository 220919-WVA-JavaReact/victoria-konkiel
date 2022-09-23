#!/bin/bash

echo "What would you like to do?";
echo "*Type 'search' to search for a user.";
echo "*Type 'add' to add information for a user.";
read -p '  '  input;

if [ $input == 'add' ];
then
   sh add-data.sh;
elif [ $input == 'search' ];
then
   sh login.sh;
else
   echo "Sorry, I cannot understand your command... Please try again.";
fi

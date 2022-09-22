#!/bin/bash

exec < $1
read header

while IFS="," read -r fname lname email uname password
do
   echo "First name: ${fname}"
   echo "Last name: ${lname}"
   echo "Email: ${email}"
   echo "Username: ${uname}"
   echo "Password: ${password}"
   echo "-----------------------------------------------------------"
done

#!/bin/bash

read -p 'First Name: ' fname;
read -p 'Last Name: ' lname;
read -p 'Email: ' email;
read -p 'Username: ' uname;
read -sp 'Password: ' password;

string="$fname,$lname,$email,$uname,$password";

echo $string>>persist-data-exercise.csv

#!/bin/bash

#storing the arguments given by user in num1, express, and num2 variables
num1=${1};
express=${2};
num2=${3};

#checking the value of num1 and num2 to make sure they are an integer datatype
if [[ $num1 =~ ^[0-9]+$ ]]  && [[ $num2 =~ ^[0-9]+$ ]]; 
then
  #if they are an integer datatype this case will check the value of the express variable to 
  #determine what math operand is being used. This will tell us which file we need to use with what 
  #math formula
  case $express in
	#if the value of the express variable is a + for addition the calculator will use the 
	#addition file to continue
	+) sh addition.sh $num1 $num2
	;;
	
	#if the value of the express variable is a - for subtraction the calculator will use the 
	#subtraction file to continue
	-) sh subtraction.sh $num1 $num2
	;;

	#if the value of the express variable is a x for multiplication the calculator will use the 
	#multiplication file to continue
	x) sh multiplication.sh $num1 $num2
	;;

	#if the value of the express variable is a / for division the calculator will use the 
	#division file to continue
	/) sh division.sh $num1 $num2
	;;

	#if the value of the express variable is none of the above cases, the calculator will display 
	#the message what arthimetic formula are you trying to perform here? 
	*) echo "What arthimetic formula are you trying to perform here?"
	;;
  esac
else
  #if the if statement is false and the value of num1 or num2 or both are not integers the calculator 
  #will display the message soory, inputs must be numbers!
  echo "Sorry, inputs must be numbers!";
fi

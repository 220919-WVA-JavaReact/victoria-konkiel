#!/bin/bash

num1=${1};
express=${2};
num2=${3};

if [[ $num1 =~ ^[0-9]+$ ]]  && [[ $num2 =~ ^[0-9]+$ ]]; 
then
  case $express in
	+) sh addition.sh $num1 $num2
	;;
	
	-) sh subtraction.sh $num1 $num2
	;;

	x) sh multiplication.sh $num1 $num2
	;;

	/) sh division.sh $num1 $num2
	;;

	*) echo "What arthimetic formula are you trying to perform here?"
	;;
  esac
else
  echo "Sorry, inputs must be numbers!";
fi

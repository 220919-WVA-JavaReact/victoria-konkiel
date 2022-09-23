#!/bin/bash

array=();
first=0;
second=1;

for (( n=0; n<12; n++ ))
do
  echo "$first";
  nextNumber=$((first + second));
  first=$second;
  second=$nextNumber;
done

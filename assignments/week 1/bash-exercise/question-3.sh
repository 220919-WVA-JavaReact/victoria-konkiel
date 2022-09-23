#!/bin/bash

read -p 'What number would you like to know the factorial of? ' input;

fac=1;
for((c=input;c>0;c--))
{
  fac=$((fac*c))
}

echo $fac;


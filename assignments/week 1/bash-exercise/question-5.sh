#!/bin/bash

inputArray=(${1} ${2} ${3} ${4} ${5} ${6} ${7} ${8} ${9} ${10});
count=0;

for i in "${!inputArray[@]}"
do
   if [ "${inputArray[i]}" % 2 .eq 0 ]
   then
      ((count++));
   fi
done

echo $count;

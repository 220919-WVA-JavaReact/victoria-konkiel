#!/bin/bash

num=0;
array=();
while [ $num -le 5 ]
do
  echo ${array[@]};
  array+=$num;
  ((num++));
done

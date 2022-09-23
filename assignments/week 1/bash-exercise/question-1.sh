#!/bin/bash

num=0;
while [ $num -le 5 ]
do
  seq 0 $num;
  echo "\n";
  ((num++));
done

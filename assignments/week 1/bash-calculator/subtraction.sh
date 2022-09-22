#!/bin/bash

num1=${1};
num2=${2};

sub=$(expr $num1 - $num2);

echo $sub;

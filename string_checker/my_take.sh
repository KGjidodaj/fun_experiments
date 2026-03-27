#!/usr/bin/env bash

read -p "input the string: " string

gcc length_calculator.c -o length_finder 

length=$(./length_finder "$string") ## taking the output of the .c file and storing into length
./string_checker.py  $length "$string" ## the string variable is quotes as it might be storing a whitespace and without it there could be a problem checking if there is one

### future add a check if gcc is installed or not 

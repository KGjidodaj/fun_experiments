#!/usr/bin/env python3
'''I will try and experiment for fun creating my own .isalpha() method,
but as a function that takes a string as input and outputs a flag.
I also tried making my own .length() just for fun but in C'''
import sys

def string_length(string):
    output = sys.argv[1] ##first trying a temrinal-bash input into the python file.
    return int(output)


def my_take(string):#Here is my take on .isalpha() for numbers and strings
    flag = False
    pool = "0123456789"
    length = string_length(string) ###lenght = string.lenght()
    for i in range(length):
        if string[i] in pool or string[i] == " ":
            flag = True
    return flag

string = sys.argv[2]

if my_take(string) == True:
    print("Your string has numbers or gaps")
else:
    print("Your string does not contain any numbers or spaces.")

